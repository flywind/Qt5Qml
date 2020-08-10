import QtQuick 2.14

Item {
    id: home
    width: 414
    height: 896
    Rectangle {
        id: head
        anchors.top: parent.top
        anchors.topMargin: 49
        width: parent.width
        height: 48
        color: "transparent"
        SmallBtn {
            id: userIcon
            anchors.left: parent.left
            anchors.leftMargin: 12
            source: "assets/gridicons_user.svg"
        }
        SmallBtn {
            id: infoIcon
            anchors.right: parent.right
            anchors.rightMargin: 12
            source: "assets/Frame43.svg"
        }
        Text {
            anchors.left: userIcon.right
            anchors.right: infoIcon.left
            anchors.verticalCenter: parent.verticalCenter
            text: qsTr("For You")
            font.pixelSize: 28
            font.family: "microsoft yahei"
            //font.weight: Font.Medium
            font.bold: true
            color: "#4E4B6F"
            horizontalAlignment: Text.AlignHCenter
        }
    }
    Image {
        id: img
        anchors.top: head.bottom
        anchors.topMargin: 33
        anchors.horizontalCenter: parent.horizontalCenter
        source: "assets/john_wick_chapter_three_ver2.png"
        fillMode: Image.PreserveAspectFit
        sourceSize.width: parent.width - 48
        Image {
            id: txtbg
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 32
            source: "assets/Rectangle8.svg"
        }
        Text {
            id: txt1
            anchors.top: txtbg.top
            anchors.topMargin: 24
            anchors.left: txtbg.left
            anchors.leftMargin: 24
            width: 260
            height: 36
            text: qsTr("Malena Veronica, 23")
            font.family: "microsoft yahei"
            //font.weight: Font.Medium
            font.bold: true
            font.pixelSize: 24
            color: "#16123D"
        }
        Text {
            id: txt2
            anchors.top: txt1.bottom
            anchors.left: txtbg.left
            anchors.leftMargin: 24
            width: 280
            height: 24
            text: qsTr("Fashion Designer at Victoria's Secret")
            font.family: "microsoft yahei"
            //font.weight: Font.Medium
            //font.bold: true
            font.pixelSize: 16
            color: "#4E4B6F"
        }
    }
    Rectangle {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: img.bottom
        anchors.topMargin: 40
        width: 248
        height: 64
        color: "transparent"
        BigBtn {
            anchors.left: parent.left
            source: "assets/Vector1.svg"
        }
        BigBtn {
            anchors.horizontalCenter: parent.horizontalCenter
            source: "assets/Vector.svg"
        }
        BigBtn {
            anchors.right: parent.right
            source: "assets/Vector2.svg"
        }
    }
}
