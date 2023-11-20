#pragma once
// #include <threadpool/ThreadPool.hpp>
#include <cstdint>
#include <string>
#include <vector>
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

class CurlManager {
   public:
    void setEventListener(ICurlManagerListner* listener);
    Result initialize();
    Result finalize();
    Result requestCloud(const RequestType& type, const std::string& inputJson = "");
    Result requestImageDownload(const std::string& category, const HUInt32& index, const std::string& requestUrl);

    CurlManager();
    ~CurlManager();

   private:
    void onResponseUpdated(const RequestType& type, const HUInt32& code, const std::string& outputJson);
    void onImageDownloaded(const std::string& category, const HUInt32& index, const std::string& pathUrl, const Result& result);

    int request(const std::string& url, const RequestType& type, const std::string& inputJson = "");
    void downloadImage(const std::vector<std::string>& urlList);
    void downloadOneImage(const std::string& category, const HUInt32& index, const std::string& requestUrl);
    std::string split(std::string origin, const std::string &delimiter, const bool frontErase);
    std::string getFilePath(std::string meta);

    std::string mUserToken;
    std::string mServiceListUrl;
    std::string mUserTokenUrl;
    std::string mCachePath;
    ICurlManagerListner* mListener;
    // ThreadPool pool;
};
