import QtQuick
import QtQuick.Window

import CurlManager 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Row {

        MyButton
        {
            myColor: "red"
            myAction: "Request Download"
            onClicked: {
                console.log("clicked")
//                CurlManager.requestForQmlWithThread("http://127.0.0.1:5000/download/sdk_artifact.tar.gz", 1, "")
//                //                requestForQmlWithoutThread.testFunction()
                console.info("CurlManager.entryScene: ", CurlManager.entryScene);
                CurlManager.entryScene = 1
                console.info("CurlManager.entryScene: ", CurlManager.setEntryScene("asd"));
            }
        }
        MyButton {
            myColor: "green"
            myAction: "Pause"
            onClicked: {
                console.log("clicked")
            }
        }
        MyButton {
            myColor: "blue"
            myAction: "Delete"
            onClicked: {
                console.log("clicked")
                CurlManager.pause()
            }
        }
    }

    Rectangle {
        id: rotatingRect
        width: 100
        height: 100
        color: "blue"

        property int rotationAngle: 0

        // 초기 회전값 설정
        rotation: rotationAngle

        anchors.centerIn: parent
    }

    Timer {
        interval: 10 // 1초마다 실행
        running: true
        repeat: true

        onTriggered: {
            rotatingRect.rotationAngle += 1;
        }
    }

    Component.onCompleted: {
        console.info("Component.onCompleted!~!")
    }
}
