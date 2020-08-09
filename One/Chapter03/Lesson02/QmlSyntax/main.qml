import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    id: app
    visible: true
    width: 375
    height: 812
    title: qsTr("Qml 标记")
    Image {
        id: logo
        //x: 128
        //y: 314
        //width: 118
        //height: 129
        //source: "assets/logo.png"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 314
        fillMode: Image.PreserveAspectFit
        source: "assets/logo.svg"
        sourceSize.width: 118
        Component.onCompleted: {
            app.add()
        }
    }

    function add() {
        console.log("QMl Syntax")
    }
}
