#pragma once
// #include <threadpool/ThreadPool.hpp>
#include <QObject>
#include <QQmlEngine>

#include <curl/curl.h>
#include <cstdint>
#include <iostream>
#include <string>
#include <vector>

#include "ThreadPool.hpp"

typedef uint32_t HUInt32;

enum class RequestType {
    USER_TOKEN,
    SERVICE_LIST,
    MAX
};

enum class Result {
    ERROR = -1,
    OK = 0,
    UNAUTHORIZED,
    FILE_EXISTS,
    MAX
};

class ICurlManagerListner {
public:
    ICurlManagerListner() = default;
    virtual ~ICurlManagerListner() = default;
    virtual void onResponseUpdated(const RequestType& type, const HUInt32& code, const std::string& outputJson) = 0;
    virtual void onImageDownloaded(const std::string& category, const HUInt32& index, const std::string& pathUrl,
                                   const Result& result) = 0;
};

class CurlManagerListner : public ICurlManagerListner {
public:
    void onResponseUpdated(const RequestType& type, const HUInt32& code, const std::string& outputJson) override {
        std::cout << "onResponseUpdated RequestType : " << static_cast<int>(type) << ", code: " << code
                  << ", outputJson: " << outputJson << std::endl;
    };
    void onImageDownloaded(const std::string& category, const HUInt32& index, const std::string& pathUrl,
                           const Result& result) override {
        std::cout << "onImageDownloaded category : " << category << ", index : " << index << ", pathUrl : " << pathUrl
                  << ", result : " << static_cast<int>(result) << std::endl;
    };
};

class CurlManager : public QObject {
    Q_OBJECT
public:
    static CurlManager* getInstance();
    static QObject* qmlInstance(QQmlEngine* engine, QJSEngine* jsEngine);
    void setEventListener(ICurlManagerListner* listener);
    Result initialize();
    Result finalize();
    Result requestCloud(const RequestType& type, const std::string& inputJson = "");
    Result requestImageDownload(const std::string& category, const HUInt32& index, const std::string& requestUrl);

    Q_PROPERTY(int percentage READ percentage WRITE setPercentage NOTIFY sigPercentageChanged)
    Q_INVOKABLE int request(const QString& qurl, const int& type, const QString& qinputJson = "");
    Q_INVOKABLE void pause();
    Q_INVOKABLE void deleteFile();

    int percentage() {
        return mPercentage;
    }

    curl_off_t getFileTotalSize() {
        return mFileTotalSize;
    }

    CurlManager();
    ~CurlManager();

public Q_SLOTS:
    void setPercentage(int percentage) {
        if (mPercentage != percentage) {
            mPercentage = percentage;
            emit sigPercentageChanged(mPercentage);
        }
    }

Q_SIGNALS:
    void sigPercentageChanged(int percentage);

private:
    void onResponseUpdated(const RequestType& type, const HUInt32& code, const std::string& outputJson);
    void onImageDownloaded(const std::string& category, const HUInt32& index, const std::string& pathUrl,
                           const Result& result);

    void downloadImage(const std::vector<std::string>& urlList);
    void downloadOneImage(const std::string& category, const HUInt32& index, const std::string& requestUrl);
    std::string split(std::string origin, const std::string& delimiter, const bool frontErase);
    std::string getFilePath(std::string meta);

    std::string mUserToken;
    QString mServiceListUrl;
    QString mUserTokenUrl;
    std::string mCachePath;
    ICurlManagerListner* mListener;
    ThreadPool pool;
    static CurlManager* instance;
    CURL* curlCtx = nullptr;
    // // 글로벌 변수: 다운로드를 일시 중지할지 여부를 나타내는 플래그
    std::atomic<bool> pause_download = false;
    curl_off_t mFileTotalSize;
    int mPercentage;
};
