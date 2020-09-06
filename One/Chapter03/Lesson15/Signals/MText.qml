import QtQuick 2.0

Item {
    id: root
    Text {
        color: "white"
        id: txt2
        anchors.horizontalCenter: parent.horizontalCenter
        text: qsTr("Car name")
        z: 3
    }
    Connections {
        target: mb
        onClicked: txt2.text = "Car name: Model " + num
        onCleared: txt2.text = "Car name"
    }
}
