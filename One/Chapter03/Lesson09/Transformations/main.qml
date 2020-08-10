import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Transformations")

    Rectangle {
        anchors.centerIn: parent
        width: 100
        height: 100
        color: "green"
        rotation: 60
        transformOrigin: Item.TopRight
        //scale: 3
    }
}
