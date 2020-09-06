import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("ParentAnimation")

    Rectangle {
        id: rect
        anchors.fill: parent
        color: "green"
        Rectangle {
            id: redRect
            width: 200
            height: 200
            color: "red"
        }
        Rectangle {
            x: 300
            y: 200
            id: blueRect
            width: 100
            height: 100
            color: "blue"
            states: State {
                name: "ch"
                ParentChange {
                    target: blueRect
                    parent: redRect
                    x: 5
                    y: 30
                }
            }
            transitions: Transition {
                ParentAnimation {
                    NumberAnimation { properties: "x,y"; duration: 3000 }
                }
            }
            MouseArea {
                anchors.fill: parent
                onClicked: blueRect.state = "ch"
            }
        }
    }
}
