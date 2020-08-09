import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Text")

    Item {
        anchors.fill: parent
        Rectangle {
            anchors.fill: txt
            color: "blue"
        }
        Text {
            id: txt
            width: 250
            height: 200
            font {
                pixelSize: 20
                bold: true
                family: "microsoft yahei"
                capitalization: Font.AllUppercase
                underline: true
            }
            //horizontalAlignment: Text.AlignHCenter
            leftPadding: 10
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            text: qsTr("<b>Hello</b> <i>world</i>")
            color: "darkgreen"
            //elide: Text.ElideRight
            wrapMode: Text.WrapAnywhere
            style: Text.Sunken
            styleColor: "red"
            lineHeightMode: Text.FixedHeight
            lineHeight: 30
            //lineHeight: 2
            //clip: true
            //Component.onCompleted: console.log(txt.lineCount)
        }
    }


}
