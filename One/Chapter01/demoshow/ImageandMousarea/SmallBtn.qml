import QtQuick 2.14

Rectangle {
    id: root
    width: 48
    height: 48

    property color defaultColor: "transparent"
    property color hoverColor: "#1AC4C4C4"
    property color pressedColor: "#4DC4C4C4"
    property color disibledColor: "transparent"

    property alias source: img.source

    property alias containsMouse: mouseArea.containsMouse
    property alias containsPress: mouseArea.containsPress

    color: root.enabled ? (containsPress ? pressedColor : (containsMouse ? hoverColor : defaultColor)) : disibledColor//"transparent"
    signal clicked

    Image {
        anchors.centerIn: parent
        id: img
        opacity: root.enabled ? 1 : 0.3
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
