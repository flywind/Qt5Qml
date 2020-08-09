import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    id: app
    visible: true
    width: 375
    height: 812
    title: qsTr("Qml 标记")
    property string name: "Properties"
    property alias num: txt.height

    property int posi: 0
    Image {
        id: logo
        //x: 128
        y: 314 + app.posi
        focus: true
        //width: 118
        //height: 129
        //source: "assets/logo.png"
        anchors.horizontalCenter: parent.horizontalCenter
        //anchors.top: parent.top
        //anchors.topMargin: 314
        fillMode: Image.PreserveAspectFit
        source: "assets/logo.svg"
        sourceSize.width: 118
        Component.onCompleted: {
            app.add()
            txt.version = 3
        }
        Keys.onDownPressed: app.down()
        Keys.onUpPressed: app.up()
        Keys.onEscapePressed: app.clear()
    }

    MyText {
        id: txt
    }

    function add() {
        console.log("QMl Syntax")
        console.log("Height: " + app.num)
    }

    function down() {
        app.posi = app.posi + 5
    }

    function up() {
        app.posi = app.posi - 5
    }

    function clear() {
        app.posi = 0
    }
}
