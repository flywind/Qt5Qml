import QtQuick 2.0

Text {
    id: txt
    property int version: 1
    text: qsTr("RAIDO " + app.name + " " + version)
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: parent.top
    anchors.topMargin: 456
    height: 43
    color: "#222B45"
    font.family: "Microsoft yahei"
    font {
        pixelSize: 34
    }

    verticalAlignment: Qt.AlignHCenter
}
