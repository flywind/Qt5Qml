import QtQuick 2.0

Item {
    id: profile
    width: 414
    height: 896
    Image {
        id: img
        anchors.top: parent.top
        anchors.right: parent.right
        source: "assets/Untitled11.png"
    }
    Rectangle {
        id: head
        anchors.top: parent.top
        anchors.topMargin: 49
        width: parent.width
        height: 48
        color: "transparent"
        SmallBtn {
            id: userIcon
            enabled: false
            anchors.left: parent.left
            anchors.leftMargin: 12
            source: "assets/arrowleft.svg"
        }
        SmallBtn {
            id: infoIcon
            anchors.right: parent.right
            anchors.rightMargin: 12
            source: "assets/more-vertical.svg"
        }
    }
    Text {
        id: txt1
        anchors.top: img.bottom
        anchors.topMargin: 24
        anchors.left: img.left
        width: parent.width
        height: 36
        text: qsTr("Malena Veronica, 23")
        font.family: "Source Han Sans CN"
        font.weight: Font.Medium
        //font.bold: true
        font.pixelSize: 24
        color: "#16123D"
    }
    Text {
        id: txt2
        anchors.top: txt1.bottom
        anchors.left: img.left
        width: parent.width
        height: 24
        text: qsTr("Fashion Designer at Victoria's Secret")
        font.family: "Source Han Sans CN"
        font.weight: Font.Light
        //font.bold: true
        font.pixelSize: 16
        color: "#4E4B6F"
    }
    Text {
        id: txt3
        anchors.top: txt2.bottom
        anchors.left: img.left
        width: parent.width
        height: 24
        text: qsTr("69m away")
        font.family: "Source Han Sans CN"
        font.weight: Font.Light
        //font.bold: true
        font.pixelSize: 16
        color: "#4E4B6F"
    }
    Text {
        id: txt4
        anchors.top: txt3.bottom
        anchors.topMargin: 31
        anchors.left: img.left
        width: parent.width
        height: 22
        text: qsTr("About Me")
        font.family: "Source Han Sans CN"
        font.weight: Font.Medium
        //font.bold: true
        font.pixelSize: 18
        color: "#4E4B6F"
    }
    Text {
        id: txt5
        anchors.top: txt4.bottom
        anchors.topMargin: 12
        anchors.left: img.left
        width: parent.width - 24*2
        height: 96
        text: qsTr("Hey guys, This is Malena. I’m here to find someone for hookup. I’m not interested in something serious. I would love to hear your adventurous story.")
        font.family: "Source Han Sans CN"
        font.weight: Font.Light
        //font.bold: true
        font.pixelSize: 16
        wrapMode: Text.WordWrap
        color: "#4E4B6F"
    }
    Text {
        id: txt6
        anchors.top: txt5.bottom
        anchors.topMargin: 12
        anchors.left: img.left
        width: parent.width - 24*2
        height: 27
        text: qsTr("Interests")
        font.family: "Source Han Sans CN"
        font.weight: Font.Medium
        //font.bold: true
        font.pixelSize: 18
        wrapMode: Text.WordWrap
        color: "#4E4B6F"
    }
    Text {
        opacity: 0
        text: qsTr("text")
    }
    Flow {
        anchors.top: txt6.bottom
        anchors.topMargin: 11
        anchors.left: img.left
        width: parent.width - 24*2
        height: 70
        ColorLabel {
            id: cl1
        }
        ColorLabel {
            text: qsTr("Dance")
            labelBgColor: "#E5F7FF"
            labelColor: "#33C0FF"
        }
        ColorLabel {
            text: qsTr("Fitness")
            labelBgColor: "#FFF2E5"
            labelColor: "#FF9933"
        }
        ColorLabel {
            text: qsTr("Reading")
            labelBgColor: "#E5ECFF"
            labelColor: "#5985FF"
        }
        ColorLabel {
            text: qsTr("Photography")
            bgWidth: 130
            labelBgColor: "#F2E5FF"
            labelColor: "#9933FF"
        }
        ColorLabel {
            text: qsTr("Music")
            labelBgColor: "#E0FFFF"
            labelColor: "#12B3B3"
        }
        ColorLabel {
            text: qsTr("Movie")
            labelBgColor: "#FFE5EE"
            labelColor: "#FF3377"
        }
        Text {
            opacity: 0
            text: qsTr("text")
        }
    }
    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin:40
        width: 268
        height: 64
        color: "transparent"
        BigBtn {
            width: 74
            height: 74
            anchors.left: parent.left
            source: "assets/Vector1.svg"
        }
        BigBtn {
            width: 64
            height: 64
            rectHeight: 56
            rectWidth: 56
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 5
            source: "assets/Vector.svg"
        }
        BigBtn {
            width: 74
            height: 74
            anchors.right: parent.right
            source: "assets/Vector2.svg"
        }
    }
}
