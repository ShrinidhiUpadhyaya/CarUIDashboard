import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

import "../../components"

DRect {
    id: root

    property int minValue: 0
    property int maxValue: 20
    property int value: 10

    property bool editable: true

    radius: AppThemes.primaryRadius
    color: AppThemes.primaryButtonColor
    border.color: root.activeFocus ? AppThemes.activeFocusBorderColor : AppThemes.transparentColor
    border.width: root.activeFocus ? AppThemes.activeBorderWidth : 0

    ColumnLayout {
        anchors.fill: parent

        DRect {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: AppThemes.transparentColor
            activeFocusOnTab: false

            Image {
                width: AppThemes.smallIconSize
                height: AppThemes.smallIconSize
                anchors.centerIn: parent
                source: AppThemes.setIconSource("upArrowIcon.png")
                scale: parent.pressed ? AppThemes.pressedScale : AppThemes.primaryScale
            }

            onClicked: {
                value = Math.min(maxValue,value+1)
            }
        }

        Item {
            Layout.fillWidth: true
            Layout.fillHeight: true

            TextInput {
                width: parent.width
                anchors.centerIn: parent
                z: 2
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter

                color: activeFocus ?  AppThemes.activeTextColor : AppThemes.whiteColor
                selectionColor: AppThemes.primaryClickedColor
                text: root.value
                font.pixelSize: AppThemes.primaryFontSize
                readOnly: !root.editable
                validator: DoubleValidator {
                    bottom: Math.min(root.minValue, root.maxValue)
                    top:  Math.max(root.minValue, root.maxValue)
                }
                inputMethodHints: Qt.ImhFormattedNumbersOnly
                font.family: AppThemes.fontFamilyType
            }
        }

        DRect {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: AppThemes.transparentColor
            activeFocusOnTab: false

            Image {
                width: AppThemes.smallIconSize
                height: AppThemes.smallIconSize
                anchors.centerIn: parent
                source: AppThemes.setIconSource("upArrowIcon.png")
                rotation: 180
                scale: parent.pressed ? AppThemes.pressedScale : AppThemes.primaryScale
            }

            onClicked: {
                value = Math.max(minValue,value-1)
            }
        }
    }
}
