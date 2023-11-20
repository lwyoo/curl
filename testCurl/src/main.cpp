#include <iostream>
#include "../include/CurlManager.h"
int main() {
    std::cout << "test 1" << std::endl;
    CurlManager *curlMgr = new CurlManager();
    CurlManagerListner *listner = new CurlManagerListner();
    curlMgr->initialize();
    std::cout << "test 2" << std::endl;
    curlMgr->setEventListener(listner);
    std::cout << "test 3" << std::endl;
    curlMgr->requestCloud(RequestType::SERVICE_LIST);
    std::cout << "test 4" << std::endl;
    return 0;
}