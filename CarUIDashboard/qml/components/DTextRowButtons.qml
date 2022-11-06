import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.12

import "../components/singleComponents"

Rectangle {
    id: root

    property alias model: repeater.model

    property int currentIndex: 0

    color: AppThemes.primaryButtonColor
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

    RowLayout {
        id: buttonLayout

        anchors.fill: parent
        spacing: 0
        opacity: 0

        Repeater {
            id: repeater

            DRect {
                id: buttonRect

                Layout.fillWidth: true
                Layout.fillHeight: true

                color: root.currentIndex === index ? AppThemes.primaryClickedColor : AppThemes.primaryButtonColor
                radius: AppThemes.primaryRadius
                border.color: buttonRect.activeFocus ? AppThemes.activeFocusBorderColor : AppThemes.transparentColor
                border.width: buttonRect.activeFocus ? AppThemes.activeBorderWidth : 0
                activeFocusOnTab: true

                Behavior on color {
                    ColorAnimation {
                        duration: AppThemes.simpleAnimationDuration
                    }
                }

                DText {
                    text: model.text
                    anchors.centerIn: parent
                    color: AppThemes.whiteColor
                }

                onClicked: {
                    root.currentIndex = index;
                }
            }
        }
    }
}
