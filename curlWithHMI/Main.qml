import QtQuick
import QtQuick.Window
import QtQuick.Controls

import CurlManager 1.0

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property string url: ""
    property bool isUrlInput: false
    property bool isDownloading: false

    TextField {
        id: inputUrl
        y: 100
        width: parent.width
        height: 30
        text: "http://127.0.0.1:5000/download/sdk_artifact.tar.gz"
        // 엔터 키를 누를 때 호출되는 함수
        onAccepted: {
            // 입력된 텍스트를 출력
            console.log("입력된 텍스트:", text)
            window.url = inputUrl.text
            window.isUrlInput = true
            inputUrl.clear()
            console.log("저장된 텍스트:", window.url)
        }
    }

    // 입력된 텍스트를 표시할 Text
    Text {
        anchors.top: inputUrl.bottom
        anchors.horizontalCenter: inputUrl.horizontalCenter
        text: "입력된 주소: " + window.url
    }

    ProgressBar {
        id: progressbar
        y: 250
        anchors.horizontalCenter: button.horizontalCenter
        from: 0
        to: 100
        value: CurlManager.percentage + 0
    }

    Row {
        id: button
        anchors.centerIn: parent
        MyButton {
            id: downloadButton
            myColor: "#FF5555"
            myAction: "Download"
            onClicked: {
                console.log("clicked")
                // CurlManager.requestForQmlWithThread("http://127.0.0.1:5000/download/sdk_artifact.tar.gz", 1, "")
                // CurlManager.request("http://127.0.0.1:5000/download/sdk_artifact.tar.gz", 1, "")
                CurlManager.request(window.url, 1, "")
            }
            active: window.isUrlInput/* && window.isDownloading*/
        }
        MyButton {
            id: pauseButton
            myColor: "#55FF55"
            myAction: "Pause"
            onClicked: {
                console.log("clicked")
                CurlManager.pause()
            }
            active: window.isUrlInput
        }
        MyButton {
            id: deleteButton
            myColor: "#5555FF"
            myAction: "Delete"
            onClicked: {
                console.log("clicked")
                CurlManager.deleteFile()
            }
            active: window.isUrlInput
        }
    }

    Rectangle {
        property int rotationAngle: 0

        id: rotatingRect
        width: 100
        height: 100
        color: "blue"
        anchors.centerIn: parent
        visible: false

        // 초기 회전값 설정
        rotation: rotationAngle
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
