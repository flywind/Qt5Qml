import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("AnchorsAniamtion")

    Rectangle {
        id: box
        anchors.fill: parent
        color: "green"

        Rectangle {
            id: rect
            width: 100
            height: 100
            color: "yellow"
        }

        states: State {
            name: "right"
            AnchorChanges {
                target: rect
                anchors.right: box.right
            }
        }

        transitions: Transition {
            AnchorAnimation { duration: 3000 }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: box.state = "right"
        }
    }
}
