import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("SpringAnimation")

    Rectangle {
        id: rect
        width: 60
        height: 60
        color: "green"

        Behavior on x {
            SpringAnimation { spring: 2; damping: 0.2 }
        }
        Behavior on y {
            SpringAnimation { spring: 2; damping: 0.2 }
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            rect.x = mouse.x - rect.width/2
            rect.y = mouse.y - rect.width/2
        }
    }
}
