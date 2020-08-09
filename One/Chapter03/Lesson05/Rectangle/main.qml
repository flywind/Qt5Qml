import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        anchors.centerIn: parent
        //visible: false
        id: rect
        width: 200
        //height: 200
        implicitHeight: 200
        color: "yellow"
        border.color: "blue"
        border.width: 6
        //radius: width/2
        rotation: 40
        scale: 2
        z: 5
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#F3DB01"
            }
            GradientStop {
                position: 0.4
                color: "#E41459"
            }
            GradientStop {
                position: 1
                color: "#0008FF"
            }
        }
        Component.onCompleted: console.log(rect.implicitHeight)
    }

    Rectangle {
        width: 50
        height: 50
        opacity: 0.2
        anchors.centerIn: parent
        color: Qt.rgba(255/255,102/255,0,1)
        z: 6
        //color: "#ff6600"
    }
}
