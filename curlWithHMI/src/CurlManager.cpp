#include <QFile>
#include <QProcess>

#include <string.h>
#include <sys/stat.h>
#include <chrono>
#include <cstring>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <nlohmann/json.hpp>

#include "CurlManager.h"

using json = nlohmann::json;
CurlManager* CurlManager::instance = nullptr;
// Temp log should be changed to Logger
#define HError() std::cout << "[" << __PRETTY_FUNCTION__ << ":" << __LINE__ << "] "

CurlManager::CurlManager() : pool(30) {}

CurlManager::~CurlManager() {
    std::cout << "~CurlManager()" << std::endl;
}

CurlManager* CurlManager::getInstance() {
    if (instance == nullptr) {
        instance = new CurlManager();
    }
    return instance;
}

QObject* CurlManager::qmlInstance(QQmlEngine* engine, QJSEngine* jsEngine) {
    Q_UNUSED(engine);
    Q_UNUSED(jsEngine);

    return CurlManager::getInstance();
}

void CurlManager::setEventListener(ICurlManagerListner* listener) {
    mListener = listener;
}

Result CurlManager::initialize() {
    std::string cloudUrl = "";
    std::string cloudName = "";
    std::string backendMount = "";
    curl_global_init(CURL_GLOBAL_DEFAULT);
    //    curlCtx = curl_easy_init();

    try {
        mServiceListUrl = "http://127.0.0.1:5000/download/sdk_artifact.tar.gz";
    } catch (json::exception& e) {
        HError() << "Json parser error! \n";
    }

    return Result::OK;
}

Result CurlManager::finalize() {
    Result result = Result::OK;
    return result;
}

Result CurlManager::requestImageDownload(const std::string& category, const HUInt32& index,
                                         const std::string& requestUrl) {
    downloadOneImage(category, index, requestUrl);
    return Result::OK;
}

void CurlManager::onResponseUpdated(const RequestType& type, const HUInt32& code, const std::string& outputJson) {
    if (nullptr != mListener) {
        mListener->onResponseUpdated(type, code, outputJson);
    }
}

void CurlManager::onImageDownloaded(const std::string& category, const HUInt32& index, const std::string& pathUrl,
                                    const Result& result) {
    if (nullptr != mListener) {
        mListener->onImageDownloaded(category, index, pathUrl, result);
    }
}

struct MemoryStruct {
    char* memory;
    size_t size;
};

static size_t WriteMemoryCallback(void* ptr, size_t size, size_t nmemb, std::ofstream* stream) {
    stream->write((char*)ptr, size * nmemb);
    return (size * nmemb);
}

static int progressCallback(void* clientp, curl_off_t dltotal, curl_off_t dlnow, curl_off_t /*ultotal*/, curl_off_t /*ulnow*/) {
    curl_off_t fileTotalSize = CurlManager::getInstance()->getFileTotalSize();
    double progress = (dltotal > 0) ? static_cast<double>(dlnow + (fileTotalSize - dltotal)) * 90 / fileTotalSize : 0;

    static int lastPercentage = -1;  // 이전에 호출된 콜백에서 기록된 퍼센트 값

    // 1% 단위로 호출되도록 조절
    //    int currentPercentage = static_cast<int>(progress);
    //    if (currentPercentage != lastPercentage) {
    //        std::cout << "Download progress: " << currentPercentage << "%" << std::endl;
    //        lastPercentage = currentPercentage;
    //    }

    if ((dltotal != 0) && (dlnow != 0)) {
        int currentPercentage = static_cast<int>(progress);
        if (currentPercentage != lastPercentage) {
            std::cout << "Download progress: " << currentPercentage << "%" << std::endl;
            lastPercentage = currentPercentage;
            CurlManager::getInstance()->setPercentage(currentPercentage);
        }
    }

    return 0;
}

static curl_off_t getRemoteFileSize(const std::string& url) {
    CURL* curl = curl_easy_init();
    if (!curl) {
        std::cerr << "Failed to initialize libcurl" << std::endl;
        return -1;
    }
    // Set the URL for HEAD request
    curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
    // Set the NOBODY option to make a HEAD request
    curl_easy_setopt(curl, CURLOPT_NOBODY, 1L);
    // Perform the request
    CURLcode res = curl_easy_perform(curl);

    if (res != CURLE_OK) {
        std::cerr << "Failed to get file size: " << curl_easy_strerror(res) << std::endl;
        return -1;
    }
    // Extract Content-Length from the response
    curl_off_t fileSize;
    curl_easy_getinfo(curl, CURLINFO_CONTENT_LENGTH_DOWNLOAD_T, &fileSize);

    // Cleanup
    curl_easy_cleanup(curl);

    return fileSize;
}

int CurlManager::request(const QString& qurl, const int& type, const QString& qinputJson) {
    int ret = 0;
    const std::string url = qurl.toStdString();
    const std::string inputJson = qinputJson.toStdString();

    pool.enqueue(
        [&](const std::string& _url, const int& _type, const std::string& _inputJson) {
            const char* localFileName = "downloaded_file.zip";
            std::ofstream fp(localFileName, std::ios::app | std::ios::binary);

            long long previousFileSize = 0;
            fp.seekp(0, std::ios::end);
            previousFileSize = fp.tellp();
            fp.seekp(0, std::ios::beg);

            std::string rangeHeader = "Range: bytes=" + std::to_string(previousFileSize) + "-";

            struct curl_slist* headerlist = nullptr;
            // headerlist = curl_slist_append(headerlist, "Content-Type: application/json");
            headerlist = curl_slist_append(headerlist, "Content-Type: application/x-tar");
            headerlist = curl_slist_append(headerlist, "Content-Encoding: gzip");
            headerlist = curl_slist_append(headerlist, rangeHeader.c_str());

            curlCtx = curl_easy_init();
            curl_easy_setopt(curlCtx, CURLOPT_URL, _url.c_str());

            mFileTotalSize = getRemoteFileSize(_url);
            qDebug() << "fileTotalSize : " << mFileTotalSize;

            curl_easy_setopt(curlCtx, CURLOPT_HTTPHEADER, headerlist);
            curl_easy_setopt(curlCtx, CURLOPT_SSL_VERIFYPEER, false);
            curl_easy_setopt(curlCtx, CURLOPT_SSL_VERIFYHOST, false);
            curl_easy_setopt(curlCtx, CURLOPT_WRITEFUNCTION, WriteMemoryCallback);
            // curl_easy_setopt(curlCtx, CURLOPT_WRITEDATA, (void *)&chunk);
            curl_easy_setopt(curlCtx, CURLOPT_WRITEDATA, &fp);

            curl_easy_setopt(curlCtx, CURLOPT_XFERINFOFUNCTION, progressCallback);
            curl_easy_setopt(curlCtx, CURLOPT_NOPROGRESS, 0L);

            if (_type == static_cast<int>(RequestType::USER_TOKEN)) {
                curl_easy_setopt(curlCtx, CURLOPT_POST, 1L);
                curl_easy_setopt(curlCtx, CURLOPT_POSTFIELDS, _inputJson.c_str());
            }

            long res_code = 0;

            CURLcode rc = curl_easy_perform(curlCtx);
            if (rc) {
                HError() << "Failed \n";
                ret = -1;
            } else {
                curl_easy_getinfo(curlCtx, CURLINFO_RESPONSE_CODE, &res_code);
                if (!((res_code == 200 || res_code == 201))) {
                    HError() << "!!! Response code:" << res_code << "\n";
                }
                curl_easy_cleanup(curlCtx);
                curl_slist_free_all(headerlist);
            }

            onResponseUpdated(static_cast<RequestType>(_type), static_cast<int>(res_code), "");
        },
        url, type, inputJson);
    std::cout << "test ~~~~~~~~~~~~~~~~" << std::endl;
    return ret;
}

void CurlManager::pause() {
    std::cout << "CurlManager::Pause()" << std::endl;

    if (curlCtx != nullptr) {
        if (pause_download == false) {
            // 일시 중지 하기
            pause_download.store(true);
            curl_easy_pause(curlCtx, CURLPAUSE_ALL);
        } else {
            // 다시 시작 하기
            pause_download.store(false);
            curl_easy_pause(curlCtx, CURLPAUSE_CONT);
        }
    } else {
        pause_download.store(false);
        qDebug() << "curlCtx is nullptr";
        curl_easy_cleanup(curlCtx);
    }
}

std::string CurlManager::split(std::string origin, const std::string& delimiter, const bool frontErase) {
    size_t pos = 0;
    std::string newPath = "";
    while ((pos = origin.find(delimiter)) != std::string::npos) {
        if (frontErase) {
            newPath = origin.erase(0, pos + delimiter.length());
        } else {
            newPath = origin.erase(pos, origin.length());
        }
    }
    return newPath;
}

std::string CurlManager::getFilePath(std::string meta) {
    std::string fullPath = "";
    std::string temp = split(meta, "?", true);
    fullPath = split(temp, "%3F", false);
    fullPath.replace(fullPath.length() - 4, 4, "");
    fullPath.insert(0, mCachePath);
    return fullPath;
}

void CurlManager::downloadOneImage(const std::string& _category, const HUInt32& _index,
                                   const std::string& _requestUrl) {
    // pool.enqueue([&](const std::string& category, const HUInt32& index, const std::string& requestUrl) {
    auto testFunction([&](const std::string& category, const HUInt32& index, const std::string& requestUrl) {
        std::string filePath = getFilePath(requestUrl);
        FILE* fp = fopen(filePath.c_str(), "r");
        if (fp == NULL) {
            fp = fopen(filePath.c_str(), "wb");
            if (!fp) {
                HError() << "Can't open a file: " << filePath << "\n";
                ;
                onImageDownloaded(category, index, filePath, Result::ERROR);
                return;
            }
            CURL* curlCtx = curl_easy_init();
            curl_easy_setopt(curlCtx, CURLOPT_URL, requestUrl.c_str());
            curl_easy_setopt(curlCtx, CURLOPT_WRITEDATA, fp);
            curl_easy_setopt(curlCtx, CURLOPT_FOLLOWLOCATION, 1);
            CURLcode rc = curl_easy_perform(curlCtx);
            if (rc) {
                HError() << "!!! Failed to download" << requestUrl << "\n";
                onImageDownloaded(category, index, filePath, Result::ERROR);
            } else {
                long res_code = 0;
                curl_easy_getinfo(curlCtx, CURLINFO_RESPONSE_CODE, &res_code);
                if (!((res_code == 200 || res_code == 201))) {
                    HError() << "!!! Response code:" << res_code << "\n";
                    onImageDownloaded(category, index, filePath, Result::ERROR);
                } else {
                    curl_easy_cleanup(curlCtx);
                    fclose(fp);
                    onImageDownloaded(category, index, filePath, Result::OK);
                }
            }

        } else {
            fseek(fp, 0, SEEK_END);
            size_t size = ftell(fp);

            // File exist but size is 0, then re-download images
            if (size == 0) {
                fp = fopen(filePath.c_str(), "wb");
                // TODO extract duplicated code with the same performance
                // I have tried with mutex lock but it was bad performance
                CURL* curlCtx = curl_easy_init();
                curl_easy_setopt(curlCtx, CURLOPT_URL, requestUrl.c_str());
                curl_easy_setopt(curlCtx, CURLOPT_WRITEDATA, fp);
                curl_easy_setopt(curlCtx, CURLOPT_FOLLOWLOCATION, 1);
                CURLcode rc = curl_easy_perform(curlCtx);
                if (rc) {
                    HError() << "!!! Failed to download" << requestUrl << "\n";
                    onImageDownloaded(category, index, filePath, Result::ERROR);
                } else {
                    long res_code = 0;
                    curl_easy_getinfo(curlCtx, CURLINFO_RESPONSE_CODE, &res_code);
                    if (!((res_code == 200 || res_code == 201))) {
                        HError() << "!!! Response code:" << res_code << "\n";
                        onImageDownloaded(category, index, filePath, Result::ERROR);
                    } else {
                        curl_easy_cleanup(curlCtx);
                        fclose(fp);
                        onImageDownloaded(category, index, filePath, Result::OK);
                    }
                }
            } else {
                onImageDownloaded(category, index, filePath, Result::FILE_EXISTS);
            }
        }
    });

    testFunction(_category, _index, _requestUrl);
}

void CurlManager::downloadImage(const std::vector<std::string>& urlList) {
    // pool.enqueue([&](std::vector<std::string> list) {
    auto testFunction([&](std::vector<std::string> list) {
        for (auto&& url : list) {
            std::string filePath = getFilePath(url);
            FILE* fp = fopen(filePath.c_str(), "r");
            if (fp == NULL) {
                fp = fopen(filePath.c_str(), "wb");
                if (!fp) {
                    HError() << "Can't open a file: " << filePath << "\n";
                    return;
                }
                CURL* curlCtx = curl_easy_init();
                curl_easy_setopt(curlCtx, CURLOPT_URL, url.c_str());
                curl_easy_setopt(curlCtx, CURLOPT_WRITEDATA, fp);
                curl_easy_setopt(curlCtx, CURLOPT_FOLLOWLOCATION, 1);
                CURLcode rc = curl_easy_perform(curlCtx);
                if (rc) {
                    HError() << "!!! Failed to download" << url << "\n";
                } else {
                    long res_code = 0;
                    curl_easy_getinfo(curlCtx, CURLINFO_RESPONSE_CODE, &res_code);
                    if (!((res_code == 200 || res_code == 201))) {
                        HError() << "!!! Response code:" << res_code << "\n";
                    } else {
                        curl_easy_cleanup(curlCtx);
                        fclose(fp);
                    }
                }

            } else {
                fseek(fp, 0, SEEK_END);
                size_t size = ftell(fp);

                // File exist but size is 0, then re-download images
                if (size == 0) {
                    fp = fopen(filePath.c_str(), "wb");
                    // TODO extract duplicated code with the same performance
                    // I have tried with mutex lock but it was bad performance
                    CURL* curlCtx = curl_easy_init();
                    curl_easy_setopt(curlCtx, CURLOPT_URL, url.c_str());
                    curl_easy_setopt(curlCtx, CURLOPT_WRITEDATA, fp);
                    curl_easy_setopt(curlCtx, CURLOPT_FOLLOWLOCATION, 1);
                    CURLcode rc = curl_easy_perform(curlCtx);
                    if (rc) {
                        HError() << "!!! Failed to download" << url << "\n";
                    } else {
                        long res_code = 0;
                        curl_easy_getinfo(curlCtx, CURLINFO_RESPONSE_CODE, &res_code);
                        if (!((res_code == 200 || res_code == 201))) {
                            HError() << "!!! Response code:" << res_code << "\n";
                        } else {
                            curl_easy_cleanup(curlCtx);
                            fclose(fp);
                        }
                    }
                }
            }
            //std::this_thread::sleep_for(std::chrono::microseconds(1));
        }
    });
    testFunction(urlList);
}

static std::vector<std::string> splitList(const std::vector<std::string>& list, const int size, const bool front) {
    std::vector<std::string> halfList;
    int halfSize = size / 2;
    if (halfSize > 1) {
        if (front) {
            for (int i = 0; i < halfSize; ++i) {
                halfList.push_back(list.at(i));
            }
        } else {
            for (int i = halfSize; i < size; ++i) {
                halfList.push_back(list.at(i));
            }
        }
    }
    return halfList;
}

void CurlManager::deleteFile() {
    QString path =
        "/home/hooman1025/Projects/SetupHMI/curl/build-curlWithHMI-Desktop_Qt_6_2_4_GCC_64bit-Debug/"
        "downloaded_file.zip";
    QFile file(path);

    if (file.exists()) {
        if (file.remove()) {
            // 파일 삭제 성공
            curl_easy_reset(curlCtx);
            curlCtx = nullptr;
            pause_download.store(false);
            setPercentage(0);
            //            emit sigPercentageChanged(0);
            qDebug() << "File deleted successfully.";
        } else {
            // 파일 삭제 실패
            qDebug() << "Failed to delete the file.";
        }
    } else {
        // 파일이 존재하지 않음
        qDebug() << "File does not exist.";
    }
}
