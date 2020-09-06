import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("PropertyAnimation")
    Image {
        id: logo
        source: "db.svg"
        anchors.centerIn: parent
        MouseArea {
            anchors.fill: parent
            onClicked: sa.start()
        }
    }
    SequentialAnimation {
        id: sa
        PropertyAction {
            target: logo
            property: "opacity"
            value: 0.1
        }
        NumberAnimation {
            target: logo
            properties: "scale"
            to: 2
            duration: 3000
        }
        PropertyAction {
            target: logo
            property: "opacity"
            value: 1
        }
    }
}
