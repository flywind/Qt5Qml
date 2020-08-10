import QtQuick 2.14

Item {
    property Component c1: c2
    Component {
        id: c2
        Rectangle {
            width: 60
            height: 60
            radius: width/2
            color: "gray"
        }
    }
}
