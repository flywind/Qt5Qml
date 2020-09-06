import QtQuick 2.14
import QtQuick.Controls 2.14
import QtGraphicalEffects 1.0

Item {
    id: root
    property bool glowEnabled: true
    property color color: "green"
    property color glowColor: "blue"
    property alias text: txt.text
    property alias font: txt.font
    property alias horizontalAlignment: txt.horizontalAlignment
    property alias verticalAlignment: txt.verticalAlignment

    Text {
        id: txt
        text: qsTr("text")
        anchors.centerIn: parent
        color: root.color
        layer.enabled: root.glowEnabled
        layer.effect: Glow {
            color:root.glowColor
            samples: 20
            spread: 0.3
        }
        TextMetrics {
            id: tm
            text: txt.text
            font: txt.font
        }
    }
}
