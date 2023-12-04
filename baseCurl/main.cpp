// #include <iostream>
// #include <curl/curl.h>

// static size_t WriteCallback(void *ptr, size_t size, size_t nmemb, void *stream)
// {
//   fwrite(ptr, size, nmemb, (FILE *)stream);
//   return (nmemb*size);
// }

// int main() {
//     // libcurl 초기화
//     CURL* curl;
//     CURLcode res;

//     curl_global_init(CURL_GLOBAL_DEFAULT);
//     curl = curl_easy_init();

//     if (curl) {
//         // 다운로드할 파일의 URL
//         const char* url = "http://127.0.0.1:5000/download/sdk_artifact.tar.gz";


//         struct curl_slist* headers = nullptr;
//         headers = curl_slist_append(headers, "Content-Type: application/x-tar");
//         headers = curl_slist_append(headers, "Content-Encoding: gzip");
        

//         // 저장할 로컬 파일의 경로와 이름
//         const char* localFileName = "downloaded_file.zip";

//         // 파일을 저장할 FILE 포인터
//         FILE* fp = fopen(localFileName, "wb");
//         if (!fp) {
//             std::cerr << "Error opening file for writing" << std::endl;
//             return 1;
//         }

//         // libcurl 설정
//         curl_easy_setopt(curl, CURLOPT_URL, url);
//         curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
//         curl_easy_setopt(curl, CURLOPT_WRITEDATA, fp);

//         // 파일 다운로드 실행
//         res = curl_easy_perform(curl);
//         if (res != CURLE_OK) {
//             std::cerr << "Failed to download file: " << curl_easy_strerror(res) << std::endl;
//             return 1;
//         }

//         // 리소스 정리
//         fclose(fp);
//         curl_easy_cleanup(curl);

//         if (res != CURLE_OK) {
//             std::cerr << "Failed to download file: " << curl_easy_strerror(res) << std::endl;
//             return 1;
//         }

//         std::cout << "File downloaded successfully!" << std::endl;
//     } else {
//         std::cerr << "Failed to initialize libcurl" << std::endl;
//         return 1;
//     }

//     // libcurl 종료
//     curl_global_cleanup();

//     return 0;
// }


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


// 다운로드중 일시 정지 테스트
// #include <iostream>
// #include <curl/curl.h>
// #include <thread>
// #include <atomic>

// // 콜백 함수 정의
// size_t WriteCallback(void* contents, size_t size, size_t nmemb, FILE* file) {
//     return fwrite(contents, size, nmemb, file);
// }

// // 글로벌 변수: 다운로드를 일시 중지할지 여부를 나타내는 플래그
// std::atomic<bool> pause_download(false);

// // 다운로드 중지 및 재개를 관리하는 함수
// int manage_download(CURL* curl) {
//     char input;
//     while (true) {
//         std::cin >> input;
//         if (input == 'p') {
//             // 'p'를 누르면 다운로드 일시 중지
//             curl_easy_pause(curl, CURLPAUSE_ALL);
//             pause_download.store(true);
//             std::cout << "Download paused. Press 'r' to resume." << std::endl;
//         } else if (input == 'r') {
//             // 'r'을 누르면 다운로드 재개
//             curl_easy_pause(curl, CURLPAUSE_CONT);
//             pause_download.store(false);
//             std::cout << "Download resumed." << std::endl;
//         } else if (input == 'q') {
//             // 'q'를 누르면 프로그램 종료
//             break;
//         }
//     }
//     return 0;
// }

// int main() {
//     // libcurl 초기화
//     CURL* curl = curl_easy_init();
//     if (!curl) {
//         std::cerr << "Failed to initialize libcurl" << std::endl;
//         return 1;
//     }

//     // 타겟 URL 설정
//     const char* url = "http://127.0.0.1:5000/download/sdk_artifact.tar.gz";
//     curl_easy_setopt(curl, CURLOPT_URL, url);

//     // 다운로드 중간에 파일을 열어 쓰기 위한 설정
//     FILE* file = fopen("downloaded_file.zip", "wb");
//     if (!file) {
//         std::cerr << "Failed to open the file for writing" << std::endl;
//         curl_easy_cleanup(curl);
//         return 1;
//     }

//     curl_easy_setopt(curl, CURLOPT_WRITEDATA, file);

//     // 다운로드 시작을 위한 쓰레드 시작
//     std::thread download_thread([&]() {
//         CURLcode res = curl_easy_perform(curl);
//         if (res != CURLE_OK) {
//             std::cerr << "curl_easy_perform() failed: " << curl_easy_strerror(res) << std::endl;
//         } else {
//             std::cout << "Download completed successfully." << std::endl;
//         }
//         // 파일 닫기
//         fclose(file);
//     });

//     // 다운로드 관리를 위한 쓰레드 시작
//     std::thread manage_thread([&]() {
//         manage_download(curl);
//     });

//     // 쓰레드 종료 대기
//     download_thread.join();
//     manage_thread.join();

//     // 사용이 끝난 후 정리
//     curl_easy_cleanup(curl);

//     return 0;
// }


// 다운로드중 프로그램 종료 & 이어서 받기
#include <iostream>
#include <curl/curl.h>
#include <fstream>

// 콜백 함수 정의
size_t WriteCallback(void* contents, size_t size, size_t nmemb, std::ofstream* file) {
    file->write((char*)contents, size * nmemb);
    return size * nmemb;
}

static int progressCallback(void* clientp, curl_off_t dltotal, curl_off_t dlnow, curl_off_t /*ultotal*/, curl_off_t /*ulnow*/) {
    double progress = (dltotal > 0) ? static_cast<double>(dlnow) * 100 / dltotal : 0;

    static int lastPercentage = -1;  // 이전에 호출된 콜백에서 기록된 퍼센트 값

    // 1% 단위로 호출되도록 조절
    int currentPercentage = static_cast<int>(progress);
    if (currentPercentage != lastPercentage) {
        std::cout << "Download progress: " << currentPercentage << "%" << std::endl;
        lastPercentage = currentPercentage;
    }

    return 0;
}

int main() {
    // 파일 다운로드 URL
    // const char* url = "https://www.example.com/largefile.zip";
    const char* url = "http://127.0.0.1:5000/download/sdk_artifact.tar.gz";

    // 다운로드를 저장할 파일
    const char* output_file = "downloaded_file.zip";

    // 파일을 열어 이어서 쓰기 모드로 열기
    std::ofstream file(output_file, std::ios::app | std::ios::binary);

    // libcurl 초기화
    CURL* curl = curl_easy_init();
    if (!curl) {
        std::cerr << "Failed to initialize libcurl" << std::endl;
        return 1;
    }

    // 다운로드 중간에 이전에 받은 부분부터 다운로드하기 위해 파일 크기 확인
    long long previousFileSize = 0;
    file.seekp(0, std::ios::end);
    previousFileSize = file.tellp();
    file.seekp(0, std::ios::beg);

    // Range 헤더 설정
    std::string rangeHeader = "Range: bytes=" + std::to_string(previousFileSize) + "-";
    curl_easy_setopt(curl, CURLOPT_HTTPHEADER, curl_slist_append(nullptr, rangeHeader.c_str()));

    // 타겟 URL 설정
    curl_easy_setopt(curl, CURLOPT_URL, url);

    // 콜백 함수 설정
    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, &file);
    curl_easy_setopt(curl, CURLOPT_XFERINFOFUNCTION, progressCallback);
    curl_easy_setopt(curl, CURLOPT_NOPROGRESS, 0L);

    // HTTP GET 요청 수행
    CURLcode res = curl_easy_perform(curl);
    if (res != CURLE_OK) {
        std::cerr << "curl_easy_perform() failed: " << curl_easy_strerror(res) << std::endl;
    } else {
        std::cout << "Download completed successfully." << std::endl;
    }

    // 사용이 끝난 후 정리
    curl_easy_cleanup(curl);
    file.close();

    return 0;
}
