#pragma once
// #include <threadpool/ThreadPool.hpp>
#include <QObject>
#include <QQmlEngine>

#include <cstdint>
#include <string>
#include <vector>
#include <iostream>

#include <curl/curl.h>

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
    virtual void onResponseUpdated(const RequestType& type, const HUInt32& code, const std::string& outputJson) = 0;
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

    Q_PROPERTY(int entryScene READ entryScene WRITE setEntryScene FINAL)
    int mEentryScene = 0;
    int entryScene() const {
        std::cout << "entryScene()" << std::endl;
        return mEentryScene;
    }
    void setEntryScene(const int& value) {
        std::cout << "setEntryScene()" << value << std::endl;
        if (mEentryScene != value) {
            mEentryScene = value;
        }
    }

    Q_INVOKABLE void setEntryScene(QString& value) {
        std::cout << "setEntryScene2()" << std::endl;
    }


    ///////////////////////////
    // 다운 로드 관련 기능 테스트 //
    ///////////////////////////
    // qml에서 호출 하기 어려워
    Q_INVOKABLE int request(const std::string& url, const RequestType& type, const std::string& inputJson = "");

    // 다운을 처음 부터 받는다, 기존에 받은 파일이 있어도 처음부터 받는다
    Q_INVOKABLE int requestForQmlWithThread(const QString& url, const int& type, const QString& inputJson);
    Q_INVOKABLE int requestForQmlWithoutThread(const QString& url, const int& type, const QString& inputJson);
    // 이어서 받을수 있게 한다
    Q_INVOKABLE int requestForQml2(const QString& url, const int& type, const QString& inputJson);

    ///////////////
    // Pause 관련 //
    ///////////////
    /// \brief CurlManager
    Q_INVOKABLE void pause();


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
    CURL* curlCtx = nullptr;
};
