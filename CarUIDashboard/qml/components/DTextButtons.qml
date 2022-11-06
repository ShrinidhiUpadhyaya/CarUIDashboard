import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.12

import "../components/singleComponents"

Rectangle {
    id: root

    property alias model: repeater.model
    property alias rows: buttonLayout.rows
    property alias columns: buttonLayout.columns

    property real fontSize: AppThemes.largeFontSize

    color: AppThemes.dividerColor
    radius: AppThemes.primaryRadius

    Rectangle {
        id: mask

        anchors.fill: parent
        radius: AppThemes.primaryRadius
        visible: false
    }

    OpacityMask {
        anchors.fill: parent
        source: buttonLayout
        maskSource: mask
    }

    GridLayout {
        id: buttonLayout

        anchors.fill: parent
        opacity: 0
        rows: 1
        columns: 2
        rowSpacing: 2

        Repeater {
            id: repeater

            DRect {
                id: buttonRect

                Layout.fillWidth: true
                Layout.fillHeight: true

                color: AppThemes.primaryButtonColor
                border.color: buttonRect.activeFocus ? AppThemes.activeFocusBorderColor : AppThemes.transparentColor
                border.width: buttonRect.activeFocus ? AppThemes.activeBorderWidth : 0
                radius: AppThemes.primaryRadius

                Behavior on color {
                    ColorAnimation {
                        duration: AppThemes.simpleAnimationDuration
                    }
                }

                DText {
                    id: text

                    text: model.text
                    anchors.centerIn: parent
                    color: AppThemes.whiteColor
                    font.pixelSize: root.fontSize
                    scale: buttonRect.pressed ? AppThemes.pressedScale : AppThemes.primaryScale

                    Behavior on scale {
                        NumberAnimation {
                            duration: AppThemes.simpleAnimationDuration
                        }
                    }
                }
            }
        }
    }
}
