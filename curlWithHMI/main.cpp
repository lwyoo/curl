#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <iostream>
#include "include/CurlManager.h"

int main(int argc, char *argv[])
{
    qRegisterMetaType<std::string>("std::string");
    QGuiApplication app(argc, argv);
    qmlRegisterSingletonType<CurlManager>("CurlManager", 1, 0,
                                          "CurlManager", &CurlManager::qmlInstance);

    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/curlWithHMI/Main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
        &app, [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        }, Qt::QueuedConnection);
    engine.load(url);

//    std::cout << "test 1" << std::endl;
//    CurlManager *curlMgr = new CurlManager();
    CurlManagerListner *listner = new CurlManagerListner();
//    curlMgr->initialize();
//    std::cout << "test 2" << std::endl;
//    curlMgr->setEventListener(listner);
//    std::cout << "test 3" << std::endl;
//    curlMgr->requestCloud(RequestType::SERVICE_LIST);
//    std::cout << "test 4" << std::endl;

    CurlManager::getInstance()->initialize();
    CurlManager::getInstance()->setEventListener(listner );

    return app.exec();
}
