//
//
//
//
//
//#include <iostream>
//#include <cstdio>
//#include <curl/curl.h>
//#include <curl/curlver.h>
//#include <curl/easy.h>
//#include <curl/urlapi.h>
//
//static size_t write_buffer_callback(char* contents, size_t size, size_t nmemb, std::string* response)
//{
//    size_t count = size * nmemb;
//    if (response != nullptr && count > 0)
//    {
//        response->append(contents, count);
//    }
//
//    return count;
//}
//
//int main() {
//    std::cout << "Hello, World!" << std::endl;
//    curl_global_init(CURL_GLOBAL_ALL);
//
//    CURL* curl = curl_easy_init();
//    if (curl == nullptr) {
//        std::cout << "init failed" << std::endl;
//    } else {
//        std::cout << "init success" << std::endl;
//    }
//
//    // api URL 설정
//    static constexpr const char* url = "http://api.blockchain.com/v3/exchange/tickers/";
//    curl_easy_setopt(curl, CURLOPT_URL, url);
//
//    // response 응답 콜백 등록
//    std::string response;
//    curl_easy_setopt(curl, CURLOPT_NOPROGRESS, 1L);
//    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, write_buffer_callback);
//    curl_easy_setopt(curl, CURLOPT_WRITEDATA, &response);
//
//    // http request 헤더 등록
//    curl_slist* slist = nullptr;
//    slist = curl_slist_append(slist, "Accept: application/json");
//    curl_easy_setopt(curl, CURLOPT_HTTPHEADER, slist);
//
//    // http GET 전송
//    CURLcode err_code = curl_easy_perform(curl);
//    if (err_code != CURLE_OK)
//    {
//        std::cout << "curl_easy_perform failed : " << curl_easy_strerror(err_code) << std::endl;
//    }
//
//    // 응답 코드 및 내용 확인
//    std::size_t response_code = 0;
//    curl_easy_getinfo(curl, CURLINFO_RESPONSE_CODE, &response_code);
//    std::cout << "http response code : " << response_code << std::endl;
//    std::cout << "http response : " << response << std::endl;
//
//    // 리소스 해제
//    curl_slist_free_all(slist);
//    curl_easy_cleanup(curl);
//    curl_global_cleanup();
//
//    return 0;
//}

#include <stdio.h>
#include <curl/curl.h>

int main(void)
{
    CURL *curl;
    CURLcode res;

    curl_global_init(CURL_GLOBAL_DEFAULT);

    curl = curl_easy_init();
    if(curl) {
        curl_easy_setopt(curl, CURLOPT_URL, "http://example.com/");

#ifdef SKIP_PEER_VERIFICATION
        /*
     * If you want to connect to a site who is not using a certificate that is
     * signed by one of the certs in the CA bundle you have, you can skip the
     * verification of the server's certificate. This makes the connection
     * A LOT LESS SECURE.
     *
     * If you have a CA cert for the server stored someplace else than in the
     * default bundle, then the CURLOPT_CAPATH option might come handy for
     * you.
     */
    curl_easy_setopt(curl, CURLOPT_SSL_VERIFYPEER, 0L);
#endif

#ifdef SKIP_HOSTNAME_VERIFICATION
        /*
     * If the site you are connecting to uses a different host name that what
     * they have mentioned in their server certificate's commonName (or
     * subjectAltName) fields, libcurl will refuse to connect. You can skip
     * this check, but this will make the connection less secure.
     */
    curl_easy_setopt(curl, CURLOPT_SSL_VERIFYHOST, 0L);
#endif

        /* cache the CA cert bundle in memory for a week */
        curl_easy_setopt(curl, CURLOPT_CA_CACHE_TIMEOUT, 604800L);
//        curl_easy_setopt(curl, CURLOPT_VERBOSE, 1L);
//        curl_easy_setopt(curl, CURLOPT_HEADER, 1L);
        curl_easy_setopt(curl, CURLOPT_NOPROGRESS, 0L);

        /* Perform the request, res will get the return code */
        res = curl_easy_perform(curl);
        /* Check for errors */
        if(res != CURLE_OK)
            fprintf(stderr, "curl_easy_perform() failed: %s\n",
                    curl_easy_strerror(res));

        /* always cleanup */
        curl_easy_cleanup(curl);
    }

    curl_global_cleanup();
    return 0;
}