import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: Qt.application.active ? qsTr("Qt") : qsTr("Keys")

    //Rect {}

    Rectangle {
        width: 300
        height: 200
        focus: true
        Keys.onEscapePressed: Qt.quit()
        color: "yellow"
        Keys.forwardTo: [rect2,rect3]
        Rectangle {
            id: rect2
            width: 100
            height: 100
            color: "blue"
            Keys.onPressed: {
                switch(event.key) {
                    case Qt.Key_F1:
                        rect2.x -= 10
                        break
                    case Qt.Key_F2:
                        rect2.x += 10
                        break
                    case Qt.Key_F3:
                        rect2.y -= 10
                        break
                    case Qt.Key_F4:
                        rect2.y += 10
                        break
                }

            }
        }
        Rectangle {
            id: rect3
            width: 100
            height: 100
            color: "green"
            Keys.onPressed: {
                switch(event.key) {
                    case Qt.Key_Left:
                        rect3.x -= 10
                        break
                    case Qt.Key_Right:
                        rect3.x += 10
                        break
                    case Qt.Key_Up:
                        rect3.y -= 10
                        break
                    case Qt.Key_Down:
                        rect3.y += 10
                        break
                }

            }
        }
    }

//    Column {
//        Rectangle {
//            width: 100
//            height: 100
//            color: "lightblue"
//            MouseArea {
//                anchors.fill: parent
//                onClicked: Qt.openUrlExternally("https://www.baidu.com")
//            }
//        }
//        Rectangle {
//            width: 100
//            height: 100
//            color: Qt.tint("lightblue","#10ff0000")
//        }
//        Rectangle {
//            width: 100
//            height: 100
//            color: Qt.rgba(170/255,49/255,49/255,1)
//        }
//        Rectangle {
//            width: 100
//            height: 100
//            color: Qt.darker("yellow")
//        }
//    }




//    Component.onCompleted: {
//        var a = Qt.platform.os
//        console.log(a)

//        var str = "Hello world"
//        console.log(Qt.btoa(str))

//        var str2 = "SGVsbG8gd29ybGQ="
//        console.log(Qt.atob(str2))

//        var col = Qt.colorEqual("blue","#0000ff")
//        console.log(col)

//        var list = Qt.fontFamilies()
//        for(var i=0;i<list.length;i++) {
//            console.log(list[i])
//        }
//    }

//    MouseArea {
//        id: button
//        anchors.fill: parent
//        onPressed: {
//            if (!Qt.styleHints.setFocusOnTouchRelease)
//                button.forceActiveFocus()
//        }
//        onReleased: {
//            if (Qt.styleHints.setFocusOnTouchRelease)
//                button.forceActiveFocus()
//        }
//    }

//    Text {
//        id: txt
//        property string label: "My text"
//        text: label
//        Component.onCompleted: {
//            txt.text = Qt.binding(function(){
//                return label + " Haaaaaa"
//            })
//        }
//    }
}
