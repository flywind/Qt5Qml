import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    id: win
    visible: true
    minimumWidth: 800
    maximumWidth: 800
    minimumHeight: 600
    maximumHeight: 600
    title: qsTr("PropertyAnimation")
    property bool opened: false

    PlusMenu {
        id: pm
        x: 337
        y: 351
        onClicked: {
            if(!win.opened) {
                pm.state = "rotatoPlus"
                wcpa.start()
                twpa.start()
                dbpa.start()
                fbpa.start()
                win.opened = true
            } else {
                pm.state = "defaultPlus"
                wcpa2.start()
                twpa2.start()
                dbpa2.start()
                fbpa2.start()
                win.opened = false
            }
        }
    }

    MenuButton {
        id: wc
        z: -1
        x: 350 //350 -150
        y: 364 //364-307
        source: "wechat.svg"
        ParallelAnimation {
            id: wcpa
            NumberAnimation {
                target: wc
                properties: "x"
                to: 150
            }
            NumberAnimation {
                target: wc
                properties: "y"
                to: 307
            }
        }
        ParallelAnimation {
            id: wcpa2
            NumberAnimation {
                target: wc
                properties: "x"
                to: 350
            }
            NumberAnimation {
                target: wc
                properties: "y"
                to: 364
            }
        }
    }
    MenuButton {
        id: tw
        z: -1
        x: 350 //350 -256
        y: 364 //364-168
        btnWidth: 60
        btnHeight: 50
        source: "twit.svg"
        btnStateColor2: "#3396EB"
        ParallelAnimation {
            id: twpa
            NumberAnimation {
                target: tw
                properties: "x"
                to: 256
            }
            NumberAnimation {
                target: tw
                properties: "y"
                to: 168
            }
        }
        ParallelAnimation {
            id: twpa2
            NumberAnimation {
                target: tw
                properties: "x"
                to: 350
            }
            NumberAnimation {
                target: tw
                properties: "y"
                to: 364
            }
        }
    }
    MenuButton {
        id: db
        z: -1
        x: 350 //350 -431
        y: 364 //364-164
        btnWidth: 60
        btnHeight: 60
        source: "db.svg"
        btnStateColor2: "#E54F8C"
        ParallelAnimation {
            id: dbpa
            NumberAnimation {
                target: db
                properties: "x"
                to: 431
            }
            NumberAnimation {
                target: db
                properties: "y"
                to: 164
            }
        }
        ParallelAnimation {
            id: dbpa2
            NumberAnimation {
                target: db
                properties: "x"
                to: 350
            }
            NumberAnimation {
                target: db
                properties: "y"
                to: 364
            }
        }
        onClicked: {
            dbpage.visible = true
            dbpagesa.start()
        }

    }
    MenuButton {
        id: fb
        z: -1
        btnWidth: 27
        btnHeight: 60
        x: 350 //350 -543
        y: 364 //364-298
        source: "f.svg"
        btnStateColor2: "#395185"
        ParallelAnimation {
            id: fbpa
            NumberAnimation {
                target: fb
                properties: "x"
                to: 543
            }
            NumberAnimation {
                target: fb
                properties: "y"
                to: 298
            }
        }
        ParallelAnimation {
            id: fbpa2
            NumberAnimation {
                target: fb
                properties: "x"
                to: 350
            }
            NumberAnimation {
                target: fb
                properties: "y"
                to: 364
            }
        }
    }

    Rectangle {
        id: dbpage
        visible: false
        anchors.centerIn: parent
        width: 800
        height: 600
        color: "#E54F8C"
        Image {
            id: dbimg
            source: "db.svg"
            fillMode: Image.PreserveAspectFit
            sourceSize.width: 120
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 173
            scale: 1
        }
        Image {
            id: logo
            source: "dblogo.svg"
            fillMode: Image.PreserveAspectFit
            sourceSize.width: 300
            x: -600
            y: 361
        }
        SequentialAnimation {
            id: dbpagesa
            NumberAnimation {
                target: dbimg
                properties: "scale"
                from: 1
                to: 2
            }
            NumberAnimation {
                target: dbimg
                properties: "scale"
                from: 2
                to: 1
            }
            NumberAnimation {
                target: logo
                properties: "x"
                to: 250
            }
        }
    }
}
