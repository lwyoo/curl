import QtQuick
import QtQuick.Window

import CurlManager 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Row {

        MyButton {
            myColor: "red"
            myAction: "request download"
            onClicked: {
                console.log("clicked")
                CurlManager.requestForQml("http://127.0.0.1:5000/download/sdk_artifact.tar.gz", 1, "")
//                CurlManager.testFunction()
            }
        }
        MyButton {
            myColor: "red"
            myAction: "request"
            onClicked: {
                console.log("clicked")
            }
        }
    }

    Component.onCompleted: {
        console.info("Component.onCompleted!~!")
    }
}
