import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14

ApplicationWindow {
    id: win
    visible: true
    width: 475
    height: 1082
    title: qsTr("TESLA")
    flags: Qt.Window | Qt.FramelessWindowHint
    color: "transparent"
    Rectangle {
        anchors.fill: parent
        color: "black"
        radius: 60
    }

    Image {
        id: logo
        anchors.top: parent.top
        anchors.topMargin: 48
        anchors.horizontalCenter: parent.horizontalCenter
        sourceSize.width: 112
        fillMode: Image.PreserveAspectFit
        source: "Vector.svg"
    }
    Text {
        id: txt
        anchors.top: logo.bottom
        anchors.topMargin: 100
        width: parent.width
        horizontalAlignment: Text.AlignHCenter
        height: 35
        text: qsTr("Tesla")
        font.pixelSize: 36
        font.family: "Gotham Pro"
        font.weight: Font.Light
        color: "white"
    }
    Rectangle {
        id: rect
        anchors.top: txt.bottom
        anchors.topMargin: 24
        anchors.horizontalCenter: parent.horizontalCenter
        width: 563
        height: 46
        color: "transparent"
        Row {
            anchors.fill: parent
            spacing: 80
            Text {
                id: txt1
                width: (parent.width - 160)/3
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                height: parent.height
                text: qsTr("Model X")
                font.pixelSize: 28
                font.family: "Gotham Pro"
                font.weight: Font.Light
                color: "white"
                opacity: 0.4
            }
            GlowingLabel {
                id: txt2
                width: (parent.width - 160)/3
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                height: parent.height
                text: qsTr("Model Y")
                font.pixelSize: 48
                font.family: "Gotham Pro"
                font.weight: Font.Light
                color: "white"
                glowColor: "#006FD6"
            }
            Text {
                id: txt3
                width: (parent.width - 160)/3
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                height: parent.height
                text: qsTr("Roadster")
                font.pixelSize: 28
                font.family: "Gotham Pro"
                font.weight: Font.Light
                color: "white"
                opacity: 0.4
            }
        }
    }
    Image {
        id: car
        anchors.top: rect.bottom
        anchors.topMargin: 57
        source: "image.png"
        fillMode: Image.PreserveAspectFit
        sourceSize.width: parent.width
    }
    Rectangle {
        id: leftRect
        anchors.left: parent.left
        anchors.top: car.bottom
        width: parent.width/2
        height: 57
        color: "transparent"
        Column {
            anchors.fill: parent
            leftPadding: 79
            spacing: 8
            Text {
                id: txt4
                width: 130
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                height: 35
                text: qsTr("300 mi")
                font.pixelSize: 36
                font.family: "Gotham Pro"
                font.weight: Font.Medium
                color: "white"
            }
            Text {
                id: txt5
                width: 130
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                height: 14
                text: qsTr("Range (EPA est.)")
                font.pixelSize: 14
                font.family: "Gotham Pro"
                font.weight: Font.Light
                color: "white"
            }
        }
    }
    Rectangle {
        anchors.left: leftRect.right
        anchors.top: car.bottom
        width: 1
        height: 57
        color: "white"
        opacity: 0.3
    }

    Rectangle {
        anchors.right: parent.right
        anchors.top: car.bottom
        width: parent.width/2
        height: 57
        color: "transparent"
        Column {
            anchors.fill: parent
            leftPadding: 40
            spacing: 8
            Text {
                id: txt6
                width: 94
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                height: 35
                text: qsTr("AWD")
                font.pixelSize: 36
                font.family: "Gotham Pro"
                font.weight: Font.Medium
                color: "white"
            }
            Text {
                id: txt7
                width: 94
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                height: 14
                text: qsTr("Dual Motor")
                font.pixelSize: 14
                font.family: "Gotham Pro"
                font.weight: Font.Light
                color: "white"
            }
        }
    }
    Item {
        id: item1
        anchors.top: leftRect.bottom
        anchors.topMargin: 59
        width: parent.width
        height: 25
        Row {
            anchors.centerIn: parent
            Text {
                id: txt8
                width: 215
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                height: 25
                text: qsTr("Acceleration: ")
                font.pixelSize: 18
                font.family: "Gotham Pro"
                font.weight: Font.Light
                color: "#979797"
            }
            Text {
                id: txt9
                width: item1.width - 215
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                height: 25
                text: qsTr("0-60 mph in 3.5s")
                font.pixelSize: 18
                font.family: "Gotham Pro"
                font.weight: Font.Light
                color: "white"
            }
        }
    }
    Item {
        id: item2
        anchors.top: item1.bottom
        anchors.topMargin: 16
        width: parent.width
        height: 25
        Row {
            anchors.centerIn: parent
            Text {
                id: txt10
                width: 215
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                height: 25
                text: qsTr("Top speed: ")
                font.pixelSize: 18
                font.family: "Gotham Pro"
                font.weight: Font.Light
                color: "#979797"
            }
            Text {
                id: txt11
                width: item1.width - 215
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                height: 25
                text: qsTr("up to 150 mph")
                font.pixelSize: 18
                font.family: "Gotham Pro"
                font.weight: Font.Light
                color: "white"
            }
        }
    }

    Rectangle {
        anchors.top: item2.bottom
        anchors.topMargin: 68
        anchors.horizontalCenter: parent.horizontalCenter
        width: 300
        height: 64
        radius: 32
        border.color: "#D01000"
        border.width: 2
        color: "transparent"
        Text {
            anchors.centerIn: parent
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            text: qsTr("ORDER NOW")
            font.pixelSize: 20
            font.family: "Gotham Pro"
            font.weight: Font.Light
            color: "white"
        }
    }

    Rectangle {
        width: parent.width
        height: 100
        color: "transparent"
        MoveArea {
            anchors.fill: parent
            control: win
        }
    }

//    Rectangle {
//        width: 300
//        height: 80
//        color: "lightgreen"

//        TextEdit {
//            id: td
//            x:10
//            y:10
//            width: 100
//            height: 20
//            text: "Text01"
//        }

////        TextInput {
////            x: 8
////            y: 8
////            width: 90
////            height: 20
////            color: "black"
////            text: "Hello Input"
////        }
////        TextInput {
////            x: 8
////            y: 36
////            focus: true
////            width: 90
////            height: 20
////            color: "black"
////            text: "Hello Input"
////        }
//    }

//    Flow {
//        anchors.fill: parent
//        spacing: 10
//        padding: 30
//        Repeater {
//            model: 30
//            Rectangle {
//                width: 40
//                height: 60
//                color: "yellow"
//            }
//        }
//    }

//    Grid {
//        id: grid
//        //spacing: 10
//        rowSpacing: 20
//        columnSpacing: 10
//        topPadding: 100
//        Rectangle {
//            width: 60
//            height: 30
//            color: "blue"
//        }
//        Rectangle {
//            width: 160
//            height: 60
//            color: "blue"
//        }
//        Rectangle {
//            width: 100
//            height: 10
//            color: "blue"
//        }
//        Rectangle {
//            width: 80
//            height: 90
//            color: "blue"
//        }
//        Rectangle {
//            width: 60
//            height: 30
//            color: "blue"
//        }
//        Rectangle {
//            width: 90
//            height: 40
//            color: "blue"
//        }
//        Rectangle {
//            width: 260
//            height: 30
//            color: "blue"
//        }
//        Rectangle {
//            width: 160
//            height: 30
//            color: "blue"
//        }
//    }

//    Column {
//        id: col
//        anchors.fill: parent
//        spacing: 20
//        Repeater {
//            model: 5
//            Rectangle {
//                width: 100
//                height: (col.height - 40) / 5
//                color: "red"
//            }
//        }
//    }

//    Row {
//        id: row
//        anchors.fill: parent
//        spacing: 10
//        Repeater {
//            model: 5
//            Rectangle {
//                width: (row.width - 40) / 5
//                height: 100
//                color: "green"
//            }
//        }
//    }
}
