import QtQuick 2.14

Rectangle {
    id: root
    width: 100
    height: 100
    property color btnColor: "#37AAF9"
    property color btnStateColor1: btnColor
    property color btnStateColor2: "#2DC100"
    property int btnWidth: 60
    property int btnHeight: 48
    property url source: img.source
    signal clicked()
    color: mousearea.containsMouse ? root.btnStateColor2 : btnStateColor1
    radius: 50
    Image {
        id: img
        anchors.centerIn: parent
        source: root.source
        fillMode: Image.PreserveAspectFit
        sourceSize: Qt.size(root.btnWidth,root.btnHeight)
    }
    states: [
        State {
            name: "color1"
            PropertyChanges {
                target: root
                color: btnStateColor1
            }
        },
        State {
            name: "color2"
            PropertyChanges {
                target: root
                color: btnStateColor2
            }
        }
    ]
    transitions: Transition {
        ColorAnimation { properties: "color"; duration: 3000 }
    }
    MouseArea {
        id: mousearea
        anchors.fill: parent
        hoverEnabled: true
        onClicked: root.clicked()
    }
}
