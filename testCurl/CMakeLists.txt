
cmake_minimum_required(VERSION 3.10)
get_filename_component(PROJECT_NAME ${CMAKE_CURRENT_SOURCE_DIR} NAME)
project(${PROJECT_NAME})


# C++ 표준 설정
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 컴파일러 플래그
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall")

# 소스 파일
# set(SOURCES main.cpp)
aux_source_directory(src SOURCES)
aux_source_directory(interface SOURCES)

# 실행 파일 생성
add_executable(${PROJECT_NAME} ${SOURCES})

# curl 라이브러리 찾기
find_package(CURL REQUIRED)
find_package(nlohmann_json)

if(CURL_FOUND)
    # 헤더 파일 및 라이브러리 포함
    
    include_directories(${CURL_INCLUDE_DIRS})
    include_directories (include ${CURL_INCLUDE_DIRS})
    include_directories(interface ${CURL_INCLUDE_DIRS})
    target_link_libraries(${PROJECT_NAME} ${CURL_LIBRARIES})
else()
    message(FATAL_ERROR "CURL 라이브러리를 찾을 수 없습니다.")
endif()
