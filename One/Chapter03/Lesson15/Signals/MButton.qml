import QtQuick 2.14

Rectangle {
    id: root
    signal clicked(int num)
    signal cleared()

    width: 200
    height: 60
    color: "green"

//    Text {
//        anchors.horizontalCenter: parent.horizontalCenter
//        anchors.topMargin: 20
//        anchors.top: parent.top
//        color: "white"
//        id: txt
//        text: "Car name: "
//    }

    Image {
        id: car
        anchors.centerIn: parent
        source: "car.png"
        fillMode: Image.PreserveAspectFit
        sourceSize.height: 130
        MouseArea {
            anchors.fill: parent
            onClicked: root.clicked(10)
        }
    }

    Image {
        id: clear
        anchors.bottom: car.top
        anchors.bottomMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
        source: "clear.svg"
        fillMode: Image.PreserveAspectFit
        sourceSize: Qt.size(64,64)
        MouseArea {
            anchors.fill: parent
            onClicked: root.cleared()
        }
    }

    function start() {

    }

//    onClicked: {
//        txt.text = "Car name: Model 3"
//    }
}
