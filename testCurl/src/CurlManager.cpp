#include "CurlManager.h"

#include <curl/curl.h>
#include <string.h>
#include <sys/stat.h>

#include <chrono>
#include <fstream>
#include <iomanip>
#include <nlohmann/json.hpp>

#include <iostream>
using json = nlohmann::json;

// Temp log should be changed to Logger
#define HError() std::cout << "[" << __PRETTY_FUNCTION__ << ":" << __LINE__ << "] "

// CurlManager::MultiStreamingImpl() : pool(30) {
// }
CurlManager::CurlManager() {
}

CurlManager::~CurlManager() {
}

void CurlManager::setEventListener(ICurlManagerListner *listener) {
    mListener = listener;
}

Result CurlManager::initialize() {
    std::string cloudUrl = "";
    std::string cloudName = "";
    std::string backendMount = "";

    try {
        // std::ifstream in(mCinemoJsonPath);
        // json j = json::parse(in);
        // mCachePath = j.at("cachePath");
        // mBrand = j.at("brand");
        // mModel = j.at("model");
        // mUser = j.at("user");
        // mLogLevel = j.at("loglevel");
        // mSearhLimit = j.at("searhLimit");
        // mDeviceId = j.at("deviceId");
        // cloudUrl = j.at("cloudUrl");
        // cloudName = j.at("cloudName");
        // mServiceListUrl = j.at("identityList");
        // mUserTokenUrl = j.at("identityUserToken");
        // backendMount = j.at("backendMount");

    } catch (json::exception &e) {
        HError() << "Json parser error! \n";
    }

    int result = mkdir(mCachePath.c_str(), 0755);
    if (result == 0) {
        //HInfo() << "Created cache folder";
    } else {
        //HInfo() << strerror(errno);
    }

    return Result::OK;
}

Result CurlManager::finalize() {
    Result result = Result::OK;
    return result;
}

Result CurlManager::requestCloud(const RequestType &type, const std::string &inputJson) {
    if (type == RequestType::USER_TOKEN) {
        if (request(mUserTokenUrl, type, inputJson) == -1) {
            return Result::ERROR;
        }
    } else if (type == RequestType::SERVICE_LIST) {
        if (request(mServiceListUrl, type) == -1) {
            return Result::ERROR;
        }
    }
    return Result::OK;
}

Result CurlManager::requestImageDownload(const std::string& category, const HUInt32& index, const std::string& requestUrl) {
    downloadOneImage(category, index, requestUrl);
    return Result::OK;
}

void CurlManager::onResponseUpdated(const RequestType &type, const HUInt32 &code, const std::string &outputJson) {
    if (nullptr != mListener) {
        mListener->onResponseUpdated(type, code, outputJson);
    }
}

void CurlManager::onImageDownloaded(const std::string& category, const HUInt32& index, const std::string& pathUrl, const Result& result) {
    if (nullptr != mListener) {
        mListener->onImageDownloaded(category, index, pathUrl, result);
    }
}

struct MemoryStruct {
    char *memory;
    size_t size;
};

static size_t WriteMemoryCallback(void *contents, size_t size, size_t nmemb, void *userp) {
    size_t realsize = size * nmemb;
    struct MemoryStruct *mem = (struct MemoryStruct *)userp;

    mem->memory = (char *)realloc(mem->memory, mem->size + realsize + 1);
    if (mem->memory == NULL) {
        /* out of memory! */
        HError() << "not enough memory (realloc returned NULL) \n";
        return 0;
    }

    memcpy(&(mem->memory[mem->size]), contents, realsize);
    mem->size += realsize;
    mem->memory[mem->size] = 0;

    return realsize;
}

// int CurlManager::request(const std::string &url, const RequestType &type, const std::string &inputJson) {
//     int ret = 0;
//     pool.enqueue([&](const std::string &_url, const RequestType &_type, const std::string &_inputJson) {
//         struct MemoryStruct chunk;
//         chunk.memory = (char *)malloc(1);
//         chunk.size = 0;

//         struct curl_slist *headerlist = nullptr;
//         headerlist = curl_slist_append(headerlist, "Content-Type: application/json");

//         CURL *curlCtx = curl_easy_init();
//         curl_easy_setopt(curlCtx, CURLOPT_URL, _url.c_str());
//         curl_easy_setopt(curlCtx, CURLOPT_HTTPHEADER, headerlist);
//         curl_easy_setopt(curlCtx, CURLOPT_SSL_VERIFYPEER, false);
//         curl_easy_setopt(curlCtx, CURLOPT_SSL_VERIFYHOST, false);
//         curl_easy_setopt(curlCtx, CURLOPT_WRITEFUNCTION, WriteMemoryCallback);
//         curl_easy_setopt(curlCtx, CURLOPT_WRITEDATA, (void *)&chunk);

//         if (_type == RequestType::USER_TOKEN) {
//             curl_easy_setopt(curlCtx, CURLOPT_POST, 1L);
//             curl_easy_setopt(curlCtx, CURLOPT_POSTFIELDS, _inputJson.c_str());
//         }

//         long res_code = 0;

//         CURLcode rc = curl_easy_perform(curlCtx);
//         if (rc) {
//             HError() << "Failed \n";
//             ret = -1;
//         } else {
//             curl_easy_getinfo(curlCtx, CURLINFO_RESPONSE_CODE, &res_code);
//             if (!((res_code == 200 || res_code == 201))) {
//                 HError() << "!!! Response code:" << res_code << "\n";
//             }
//             curl_easy_cleanup(curlCtx);
//             curl_slist_free_all(headerlist);
//         }

//         onResponseUpdated(_type, static_cast<int>(res_code), chunk.memory);
//     },
//                  url, type, inputJson);

//     return ret;
// }
int CurlManager::request(const std::string &url, const RequestType &type, const std::string &inputJson) {
    int ret = 0;

    auto testFunction([&](const std::string &_url, const RequestType &_type, const std::string &_inputJson) {
        struct MemoryStruct chunk;
        chunk.memory = (char *)malloc(1);
        chunk.size = 0;

        struct curl_slist *headerlist = nullptr;
        headerlist = curl_slist_append(headerlist, "Content-Type: application/json");

        CURL *curlCtx = curl_easy_init();
        curl_easy_setopt(curlCtx, CURLOPT_URL, _url.c_str());
        curl_easy_setopt(curlCtx, CURLOPT_HTTPHEADER, headerlist);
        curl_easy_setopt(curlCtx, CURLOPT_SSL_VERIFYPEER, false);
        curl_easy_setopt(curlCtx, CURLOPT_SSL_VERIFYHOST, false);
        curl_easy_setopt(curlCtx, CURLOPT_WRITEFUNCTION, WriteMemoryCallback);
        curl_easy_setopt(curlCtx, CURLOPT_WRITEDATA, (void *)&chunk);

        if (_type == RequestType::USER_TOKEN) {
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

        onResponseUpdated(_type, static_cast<int>(res_code), chunk.memory);
    });

    testFunction(url, type, inputJson);

    return ret;
}

std::string CurlManager::split(std::string origin, const std::string &delimiter, const bool frontErase) {
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
    fullPath.replace(fullPath.length()-4, 4,"");
    fullPath.insert(0, mCachePath);
    return fullPath;
}


void CurlManager::downloadOneImage(const std::string& _category, const HUInt32& _index, const std::string& _requestUrl) {

    // pool.enqueue([&](const std::string& category, const HUInt32& index, const std::string& requestUrl) {
    auto testFunction([&](const std::string& category, const HUInt32& index, const std::string& requestUrl) {
            std::string filePath = getFilePath(requestUrl);
            FILE *fp = fopen(filePath.c_str(), "r");
            if (fp == NULL) {
                fp = fopen(filePath.c_str(), "wb");
                if (!fp) {
                    HError() << "Can't open a file: " << filePath << "\n";;
                    onImageDownloaded(category, index, filePath, Result::ERROR);
                    return;
                }
                CURL *curlCtx = curl_easy_init();
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
                    CURL *curlCtx = curl_easy_init();
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

void CurlManager::downloadImage(const std::vector<std::string> &urlList) {
    // pool.enqueue([&](std::vector<std::string> list) {
    auto testFunction([&](std::vector<std::string> list) {
        for (auto &&url : list) {
            std::string filePath = getFilePath(url);
            FILE *fp = fopen(filePath.c_str(), "r");
            if (fp == NULL) {
                fp = fopen(filePath.c_str(), "wb");
                if (!fp) {
                    HError() << "Can't open a file: " << filePath << "\n";
                    return;
                }
                CURL *curlCtx = curl_easy_init();
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
                    CURL *curlCtx = curl_easy_init();
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

static std::vector<std::string> splitList(const std::vector<std::string> &list, const int size, const bool front) {
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

