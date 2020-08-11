import QtQuick 2.0

Item {
    id: root
    property alias text: txt.text
    property alias labelWidth: root.width
    property alias labelHeight: root.height
    property alias labelColor: txt.color
    property alias labelBgColor: rect.color
    property int space: 8
    property int bgWidth: 80
    width: bgWidth + space
    height: 36
    Rectangle {
        id: rect
        width: bgWidth
        height: 28
        color: "#FFE9E6"
        radius: root.height/2
    }
    Text {
        id: txt
        width: bgWidth
        height: 28
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        text: qsTr("Travel")
        font.family: "Source Han Sans CN"
        font.weight: Font.Medium
        //font.bold: true
        font.pixelSize: 16
        color: "#FF6F59"
    }
}
