import QtQuick

Item {
    id: root
    width: 100
    height: 100
    property color myColor: "red"
    property string myAction: "NONE"
    property bool active: false
    signal clicked()

    Rectangle {
        width: 100
        height: 30
        color: myColor

        Text {
            id: name
            font.pixelSize: 20
            text: qsTr(myAction)
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.info("myAction: ", myAction)
                root.clicked()
            }
            enabled: root.active
        }
    }
}
