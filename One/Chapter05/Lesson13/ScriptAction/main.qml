import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    id: win
    visible: true
    width: 640
    height: 480
    title: qsTr("ScriptAction")
    Rectangle {
        id: rect
        width: 60
        height: 60
        color: "green"
        MouseArea {
            anchors.fill: parent
            onClicked: sa.start()
        }
    }
    SequentialAnimation {
        id: sa
        NumberAnimation {
            target: rect
            properties: "x"
            to: 200
            duration: 300
        }
        ScriptAction {
            script: win.changeColor()
        }

        NumberAnimation {
            target: rect
            properties: "y"
            to: 200
            duration: 300
        }
    }

    function changeColor() {
        rect.color = "blue"
    }
}
