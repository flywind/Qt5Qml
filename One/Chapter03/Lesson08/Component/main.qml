import QtQuick 2.14
import QtQuick.Window 2.14
import "image.js" as ImageJS

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Component")

    Item {
        id: myitem
        z: 10
        width: 400
        height: 400
        anchors.centerIn: parent

        Rectangle {
            anchors.fill: parent
            color: "yellow"
        }


        Loader { sourceComponent: component1 }
        Loader { sourceComponent: component1; x:60; opacity: 0.6}

    }



    Component {
        id: component1
        Logo {x: 10; y: 20}
    }

    Rectangle {
        id: rect
        width: 300
        height: 300
        color: "#ff6600"
        Component.onCompleted: ImageJS.createComponent()
    }

//    MyItem {
//        id: myItem
//    }

//    ListView {
//        width: 200
//        height: 400
//        model: 5
//        delegate: myItem.c1
//    }
}

