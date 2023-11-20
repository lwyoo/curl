#include <iostream>
#include <curl/curl.h>

static size_t WriteCallback(void *ptr, size_t size, size_t nmemb, void *stream)
{
  fwrite(ptr, size, nmemb, (FILE *)stream);
  return (nmemb*size);
}

int main() {
    // libcurl 초기화
    CURL* curl;
    CURLcode res;

    curl_global_init(CURL_GLOBAL_DEFAULT);
    curl = curl_easy_init();

    if (curl) {
        // 다운로드할 파일의 URL
        const char* url = "http://127.0.0.1:5000/download/sdk_artifact.tar.gz";


        struct curl_slist* headers = nullptr;
        headers = curl_slist_append(headers, "Content-Type: application/x-tar");
        headers = curl_slist_append(headers, "Content-Encoding: gzip");
        

        // 저장할 로컬 파일의 경로와 이름
        const char* localFileName = "downloaded_file.zip";

        // 파일을 저장할 FILE 포인터
        FILE* fp = fopen(localFileName, "wb");
        if (!fp) {
            std::cerr << "Error opening file for writing" << std::endl;
            return 1;
        }

        // libcurl 설정
        curl_easy_setopt(curl, CURLOPT_URL, url);
        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
        curl_easy_setopt(curl, CURLOPT_WRITEDATA, fp);

        // 파일 다운로드 실행
        res = curl_easy_perform(curl);
        if (res != CURLE_OK) {
            std::cerr << "Failed to download file: " << curl_easy_strerror(res) << std::endl;
            return 1;
        }

        // 리소스 정리
        fclose(fp);
        curl_easy_cleanup(curl);

        if (res != CURLE_OK) {
            std::cerr << "Failed to download file: " << curl_easy_strerror(res) << std::endl;
            return 1;
        }

        std::cout << "File downloaded successfully!" << std::endl;
    } else {
        std::cerr << "Failed to initialize libcurl" << std::endl;
        return 1;
    }

    // libcurl 종료
    curl_global_cleanup();

    return 0;
}


// #include <iostream>
// #include <curl/curl.h>

// // 콜백 함수 정의
// static size_t WriteCallback(void *ptr, size_t size, size_t nmemb, void *stream)
// {
//   fwrite(ptr, size, nmemb, (FILE *)stream);
//   return (nmemb*size);
// }

// int main() {
//     // libcurl 초기화
//     CURL* curl = curl_easy_init();
//     if (!curl) {
//         std::cerr << "Failed to initialize libcurl" << std::endl;
//         return 1;
//     }

//     // 타겟 URL 설정
    
//     // const char* url = "http://localhost:8000";
//     const char* url = "http://127.0.0.1:5000/download/sdk_artifact.tar.gz";
//     curl_easy_setopt(curl, CURLOPT_URL, url);

//     // 사용자 정의 헤더 추가
//     struct curl_slist* headers = nullptr;
//     // headers = curl_slist_append(headers, "Content-Type: application/json");

//     // tar.gz 인 경우
//     headers = curl_slist_append(headers, "Content-Type: application/x-tar");
//     headers = curl_slist_append(headers, "Content-Encoding: gzip");
//     // zip 인 경우
//     // headers = curl_slist_append(headers, "Content-Type: application/zip");
//     // headers = curl_slist_append(headers, "Authorization: Bearer YourAccessToken");
//     curl_easy_setopt(curl, CURLOPT_HTTPHEADER, headers);

//     // 콜백 함수 설정
//     std::string response;
//     curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
//     curl_easy_setopt(curl, CURLOPT_WRITEDATA, &response);

//     // HTTP GET 요청 수행
//     CURLcode res = curl_easy_perform(curl);
//     if (res != CURLE_OK) {
//         std::cerr << "curl_easy_perform() failed: " << curl_easy_strerror(res) << std::endl;
//     } else {
//         // std::cout << "Response:\n" << response << std::endl;
//     }

//     // 사용이 끝난 후 정리
//     curl_slist_free_all(headers);
//     curl_easy_cleanup(curl);

//     return 0;
// }