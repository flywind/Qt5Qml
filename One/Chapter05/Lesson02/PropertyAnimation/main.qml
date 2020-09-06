import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    minimumWidth: 800
    maximumWidth: 800
    minimumHeight: 600
    maximumHeight: 600
    title: qsTr("PropertyAnimation")

    PlusMenu {
        id: pm
        x: 337
        y: 351
        onClicked: pm.state = "rotatoPlus"
    }

    MenuButton {
        id: wechar
        x: 350 //350 -150
        y: 364 //364-307
        source: "wechat.svg"
        NumberAnimation {
            running: true
            target: wechar
            properties: "x"
            to: 150
        }
        NumberAnimation {
            running: true
            target: wechar
            properties: "y"
            to: 307
        }
        onClicked: wechar.state = "color2"
    }
    MenuButton {
        id: tw
        x: 350 //350 -256
        y: 364 //364-168
        btnWidth: 60
        btnHeight: 50
        source: "twit.svg"
        btnStateColor2: "#3396EB"
        NumberAnimation {
            running: true
            target: tw
            properties: "x"
            to: 256
        }
        NumberAnimation {
            running: true
            target: tw
            properties: "y"
            to: 168
        }
    }
    MenuButton {
        id: db
        x: 350 //350 -431
        y: 364 //364-164
        btnWidth: 60
        btnHeight: 60
        source: "db.svg"
        btnStateColor2: "#E54F8C"
        NumberAnimation {
            running: true
            target: db
            properties: "x"
            to: 431
        }
        NumberAnimation {
            running: true
            target: db
            properties: "y"
            to: 164
        }
    }
    MenuButton {
        id: fb
        btnWidth: 27
        btnHeight: 60
        x: 350 //350 -543
        y: 364 //364-298
        source: "f.svg"
        btnStateColor2: "#395185"
        NumberAnimation {
            running: true
            target: fb
            properties: "x"
            to: 543
        }
        NumberAnimation {
            running: true
            target: fb
            properties: "y"
            to: 298
        }
    }
}
