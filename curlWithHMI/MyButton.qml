import QtQuick

Item {
    id: root
    width: 100
    height: 100
    property color myColor: "red"
    property string myAction: "NONE"
    signal clicked()
    Rectangle {
        width: 100
        height: 100
        color: myColor
        Text {
            id: name
            text: qsTr(myAction)
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.info("myAction: ", myAction)
                root.clicked()
            }
        }
    }
}
