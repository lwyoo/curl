cmake_minimum_required(VERSION 3.16)

project(curlWithHMI VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 REQUIRED COMPONENTS Quick)
find_package(CURL REQUIRED)
find_package(nlohmann_json)

qt_add_executable(appcurlWithHMI
    main.cpp
    src/CurlManager.cpp

)

if(CURL_FOUND)
    include_directories(${CURL_INCLUDE_DIRS})
    include_directories (include ${CURL_INCLUDE_DIRS})
    include_directories(interface ${CURL_INCLUDE_DIRS})
    message("CURL 라이브러리를 찾음 : ."${CURL_INCLUDE_DIRS})
else()
    message(FATAL_ERROR "CURL 라이브러리를 찾을 수 없습니다.")
endif()

include(GNUInstallDirs)
qt_add_qml_module(appcurlWithHMI
    URI curlWithHMI
    VERSION 1.0
    QML_FILES Main.qml
    SOURCES include/CurlManager.h interface/ThreadPool.hpp src/CurlManager.cpp
    QML_FILES MyButton.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appcurlWithHMI PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appcurlWithHMI
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)
target_link_libraries(appcurlWithHMI
    PRIVATE Qt6::Quick
    ${CURL_LIBRARIES}
)

install(TARGETS appcurlWithHMI
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
