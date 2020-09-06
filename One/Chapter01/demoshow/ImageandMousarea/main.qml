import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Window 2.14

ApplicationWindow {
    id: win
    visible: true
    flags: Qt.Window | Qt.FramelessWindowHint
    width: 414
    height: 896
    title: qsTr("Image and Mousarea")
    Loader {
        id: pageLoader
        sourceComponent: home
    }

    Row {
        width: parent.width
        height: 100
        spacing: 0
        Rectangle {
            width: 100
            height: 100
            color: "transparent"
            MouseArea {
                anchors.fill: parent
                onClicked: pageLoader.sourceComponent = home
            }
        }
        Rectangle {
            width: parent.width - 200
            height: 100
            color: "transparent"
            MoveArea {
                anchors.fill: parent
                control: win
            }
        }

        Rectangle {
            width: 100
            height: 100
            color: "transparent"
            MouseArea {
                anchors.fill: parent
                onClicked: pageLoader.sourceComponent = profile
            }
        }
    }

    Component {
        id: home
        HomePage {}
    }

    Component {
        id: profile
        ProfilePage {}
    }

    //HomePage {}
    //ProfilePage {}
}
