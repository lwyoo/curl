#pragma once
// #include <threadpool/ThreadPool.hpp>
#include <QObject>
#include <QQmlEngine>

#include <cstdint>
#include <string>
#include <vector>
#include <iostream>

#include "ThreadPool.hpp"

enum class RequestType {
    USER_TOKEN,
    SERVICE_LIST,
    MAX
};
typedef uint32_t HUInt32;
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
    /**
     * @brief Update when requestCloud() is called and received response data
     * @param[in] type Request type 
     * @param[in] code Http status code
     * @param[in] outputJson Output Json data
     * @since 1.0
     */
    virtual void onResponseUpdated(const RequestType& type, const HUInt32& code, const std::string& outputJson) = 0;

    /**
     * @brief Called when image is updated
     * @param[in] index of image
     * @param[in] pathUrl of image
     * @param[in] result of request
     * @since 1.0
     */
    virtual void onImageDownloaded(const std::string& category, const HUInt32& index, const std::string& pathUrl, const Result& result) = 0;
};


class CurlManagerListner : public ICurlManagerListner {
   public:
    void onResponseUpdated(const RequestType& type, const HUInt32& code, const std::string& outputJson) override {
        std::cout << "onResponseUpdated RequestType : " <<  static_cast<int>(type) << ", code: " << code << ", outputJson: " << outputJson << std::endl;

    };
    void onImageDownloaded(const std::string& category, const HUInt32& index, const std::string& pathUrl, const Result& result) override {
        std::cout << "onImageDownloaded category : " << category << ", index : " << index << ", pathUrl : " << pathUrl << ", result : " << static_cast<int>(result) << std::endl;
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
    Q_INVOKABLE int request(const std::string& url, const RequestType& type, const std::string& inputJson = "");
    Q_INVOKABLE int requestForQml(const QString& url, const int& type, const QString& inputJson);
    Q_INVOKABLE void testFunction();

    CurlManager();
    ~CurlManager();

   private:
    void onResponseUpdated(const RequestType& type, const HUInt32& code, const std::string& outputJson);
    void onImageDownloaded(const std::string& category, const HUInt32& index, const std::string& pathUrl, const Result& result);

    void downloadImage(const std::vector<std::string>& urlList);
    void downloadOneImage(const std::string& category, const HUInt32& index, const std::string& requestUrl);
    std::string split(std::string origin, const std::string &delimiter, const bool frontErase);
    std::string getFilePath(std::string meta);

    std::string mUserToken;
    std::string mServiceListUrl;
    std::string mUserTokenUrl;
    std::string mCachePath;
    ICurlManagerListner* mListener;
    ThreadPool pool;
    static CurlManager* instance;
};
