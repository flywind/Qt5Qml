import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Ancgors")

    Rectangle {
        z: 3
        width: 100
        height: 100
        color: "blue"
        //anchors.left: rect2.right
        //anchors.leftMargin: 10
        //anchors.centerIn: rect2
        //anchors.fill: parent
        //anchors.margins: 20
        //anchors.horizontalCenter: rect2.horizontalCenter
        //anchors.horizontalCenterOffset: 60
        //anchors.verticalCenter: rect2.verticalCenter
        //anchors.verticalCenterOffset: 30
        //anchors.baseline: rect2.baseline
    }

    Rectangle {
        id: rect2
        y: 70
        x: 140
        width: 300
        height: 300
        color: "green"
    }

//    Text {
//        id: txt
//        text: qsTr("Titile")
//    }

//    Image {
//        id: img
//        source: "logo.svg"
//    }
}

/*##^##
Designer {
    D{i:1;anchors_height:100;anchors_width:100}
}
##^##*/
