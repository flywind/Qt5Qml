import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    id: win
    visible: true
    width: 640
    height: 480
    title: qsTr("PathAnimation")

    Rectangle {
        id: rect
        width: 60
        height: 60
        radius: 30
        color: "red"
    }

    PathAnimation {
        target: rect
        running: true
        loops: Animation.Infinite
        duration: 3000
        path: Path {
            startX: 0
            startY: 0
            PathCurve { x:100; y:100 }
            PathCurve { }
//            PathCubic {
//                x: win.width - 50
//                y: win.height -50
//                control1X: x
//                control1Y: 50
//                control2X: 50
//                control2Y: y
//            }
        }
    }
}
