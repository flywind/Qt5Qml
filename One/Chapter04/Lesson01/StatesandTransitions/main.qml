import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("States and Transitions")

    Rectangle {
        id: rect
        width: 60
        height: 60
        radius: 30
        state: "colorBlue"
        states: [
            State {
                name: "colorRed"
                PropertyChanges {
                    target: rect
                    color: "red"
                }
            },
            State {
                name: "colorBlue"
                PropertyChanges {
                    target: rect
                    color: "blue"
                }
            },
            State {
                name: "colorGreen"
                PropertyChanges {
                    target: rect
                    color: "green"
                }
            }
        ]
        transitions: Transition {
            ColorAnimation { duration: 2000 }
        }
    }

    Row {
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        Rectangle {
            width: 100
            height: 100
            color: "green"
            MouseArea {
                anchors.fill: parent
                onClicked: rect.state = "colorGreen"
            }
        }
        Rectangle {
            width: 100
            height: 100
            color: "blue"
            MouseArea {
                anchors.fill: parent
                onClicked: rect.state = "colorBlue"
            }
        }
        Rectangle {
            width: 100
            height: 100
            color: "red"
            MouseArea {
                anchors.fill: parent
                onClicked: rect.state = "colorRed"
            }
        }
    }
}
