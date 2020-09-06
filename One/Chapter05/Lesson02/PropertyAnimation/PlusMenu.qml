import QtQuick 2.14

Rectangle {
    id: root
    width: 126
    height: 126
    color: "#37AAF9"
    radius: 63
    signal clicked()
    states: State {
        name: "rotatoPlus"
        PropertyChanges {
            target: plus
            rotation: -45
        }
    }
    transitions: Transition {
        NumberAnimation { property: "rotation" }
    }
    Image {
        id: plus
        anchors.centerIn: parent
        source: "plus.svg"
        fillMode: Image.PreserveAspectFit
        sourceSize: Qt.size(40,40)
    }
    MouseArea {
        anchors.fill: parent
        onClicked: root.clicked()
    }
}
