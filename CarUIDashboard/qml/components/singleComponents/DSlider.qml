import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

import "../../components"

Slider {
    id: root

    value: 0.5
    stepSize: 0.01

    handle.visible: false

    background: Rectangle {
        x: root.leftPadding
        y: root.topPadding + root.availableHeight / 2 - height / 2
        implicitWidth: root.width
        implicitHeight: root.height
        width: root.availableWidth
        height: implicitHeight
        radius: AppThemes.primaryRadius
        color: AppThemes.primaryButtonColor
        border.color: root.activeFocus ? AppThemes.activeFocusBorderColor : AppThemes.transparentColor
        border.width: root.activeFocus ? AppThemes.activeBorderWidth : 0
        activeFocusOnTab: true


        Rectangle {
            width: root.visualPosition * parent.width
            height: parent.height
            color: AppThemes.primaryClickedColor
            radius: AppThemes.primaryRadius

            DText {
                text: parseInt((root.value * 100))+ "%"
                color: AppThemes.whiteColor
                anchors.right: parent.right
                anchors.rightMargin: AppThemes.primarySpacing
                anchors.verticalCenter: parent.verticalCenter
            }
        }
    }
}


