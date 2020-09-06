import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    minimumWidth: 800
    maximumWidth: 800
    minimumHeight: 600
    maximumHeight: 600
    title: qsTr("PropertyAnimation")

    Rectangle {
        x: 337
        y: 351
        width: 126
        height: 126
        color: "#37AAF9"
        radius: 63
        Image {
            id: plus
            anchors.centerIn: parent
            source: "plus.svg"
            fillMode: Image.PreserveAspectFit
            sourceSize: Qt.size(40,40)
            states: State {
                name: "rotatoPlus"
                PropertyChanges {
                    target: plus
                    rotation: -45
                }
            }
            transitions: Transition {
                NumberAnimation { property: "rotation"; duration: 600 }
            }
        }
        MouseArea {
            anchors.fill: parent
            onClicked: plus.state = "rotatoPlus"
        }
    }

//    Rectangle {
//        id: rect
//        width: 100
//        height: 100
//        color: "green"
//        states: State {
//            name: "widthChanged"
//            PropertyChanges {
//                target: rect
//                width: 400
//            }
//        }
//        transitions: Transition {
//            NumberAnimation { property: "width"; duration: 4000; easing.type: Easing.InElastic }
//        }

//        MouseArea {
//            anchors.fill: parent
//            onClicked: rect.state = "widthChanged"
//        }
//    }

//    Rectangle {
//        id: rect
//        width: 100
//        height: 100
//        color: "green"
//        Behavior on width {
//            NumberAnimation { duration: 4000 }
//        }
//        MouseArea {
//            anchors.fill: parent
//            onClicked: rect.width = 400
//        }
//    }

//    Rectangle {
//        id: rect2
//        anchors.centerIn: parent
//        width: 100
//        height: 100
//        color: "blue"
//    }

//    PropertyAnimation {
//        running: true
//        targets: [rect,rect2]
//        properties: "color"
//        to: "yellow"
//        duration: 3000
//    }
}
