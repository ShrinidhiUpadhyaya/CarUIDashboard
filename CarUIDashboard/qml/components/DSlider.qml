import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

import "../components"

Rectangle {
    id: root

    property real value: 0.5

    width: parent.width
    height: parent.height
    color: AppThemes.primaryButtonColor
    radius: 12

    Rectangle {
        height: parent.height
        width: parent.width * root.value
        color: AppThemes.primaryClickedColor
        radius: 12

        DText {
            text: (root.value * 100)+ "%"
            color: "white"
            anchors.right: parent.right
            anchors.rightMargin: 16
            anchors.verticalCenter: parent.verticalCenter
        }
    }
}
