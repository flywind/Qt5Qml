import QtQuick 2.14
import QtGraphicalEffects 1.0

Item {
    id: root
    property color defaultColor: "white"
    property color hoverColor: "#1AC4C4C4"
    property color pressedColor: "#4DC4C4C4"
    property color disibledColor: "#1F16123D"

    property alias source: img.source

    property alias containsMouse: mouseArea.containsMouse
    property alias containsPress: mouseArea.containsPress

    property alias rectWidth: rect.width
    property alias rectHeight: rect.height

    signal clicked
    Rectangle {
        id: rect
        width: 64
        height: 64
        anchors.centerIn: parent
        radius: width/2

        color: root.enabled ? (containsPress ? pressedColor : (containsMouse ? hoverColor : defaultColor)) : disibledColor

        Image {
            anchors.centerIn: parent
            id: img
            opacity: root.enabled ? 1 : 0.6
            //source: "assets/gridicons_user.svg"
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: root.clicked()
            hoverEnabled: parent.enabled
            cursorShape: Qt.PointingHandCursor
            preventStealing: true
        }

    }
    DropShadow {
        anchors.fill: rect
        source: rect
        horizontalOffset: 0
        verticalOffset: 8
        radius: 30
        color: "#1e16123D"//argb
    }
}
