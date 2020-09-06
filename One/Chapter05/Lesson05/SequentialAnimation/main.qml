import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("SequentialAnimation")

    Rectangle {
        id: rect
        width: 30
        height: 30
        radius: 15
        color: "green"
    }

    SequentialAnimation {
        id: sa
        running: true
        loops: Animation.Infinite
        NumberAnimation {
            target: rect
            properties: "x"
            to: 400
            duration: 3000
        }
        NumberAnimation {
            target: rect
            properties: "y"
            to: 200
            duration: 3000
        }
        PauseAnimation {
            duration: 3000
        }
        NumberAnimation {
            target: rect
            properties: "x"
            to: 0
            duration: 3000
        }
        NumberAnimation {
            target: rect
            properties: "y"
            to: 0
            duration: 3000
        }
    }
}
