
cmake_minimum_required(VERSION 3.10)
project(baseCurl)

# C++ 표준 설정
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 컴파일러 플래그
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall")

# 소스 파일
set(SOURCES main.cpp)

# 실행 파일 생성
add_executable(baseCurl ${SOURCES})

# curl 라이브러리 찾기
find_package(CURL REQUIRED)

if(CURL_FOUND)
    # 헤더 파일 및 라이브러리 포함
    message("find curl~")
    include_directories(${CURL_INCLUDE_DIRS})
    target_link_libraries(baseCurl ${CURL_LIBRARIES})
else()
    message(FATAL_ERROR "CURL 라이브러리를 찾을 수 없습니다.")
endif()
