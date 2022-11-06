import QtQuick 2.12
import QtQuick.Layouts 1.12

import "../components/singleComponents"

Item {
    id: root

    property alias model: repeater.model

    property int currentIndex: 0
    property var buttonCoordinates: [0]

    Rectangle {
        id: selectedRect

        width: AppThemes.primaryButtonSize
        height: width
        radius: AppThemes.primaryRadius
        x: root.buttonCoordinates[currentIndex]
        color: AppThemes.primaryButtonColor

        Behavior on x {
            NumberAnimation {
                duration: AppThemes.simpleAnimationDuration
            }
        }
    }

    RowLayout {
        anchors.fill: parent
        spacing: AppThemes.primaryButtonSize

        Repeater {
            id: repeater

            DRect {
                id: button

                Layout.fillWidth: true
                Layout.fillHeight: true
                color: AppThemes.transparentColor
                border.color: button.activeFocus ? AppThemes.activeFocusBorderColor : AppThemes.transparentColor
                border.width: button.activeFocus ? AppThemes.activeBorderWidth : 0
                radius: AppThemes.primaryRadius

                Image {
                    width: AppThemes.primaryIconSize
                    height: width
                    anchors.centerIn: parent
                    source: index === root.currentIndex ? model.selectedSource : model.source
                }

                onXChanged: {
                    console.log(parseInt(x))
                    root.buttonCoordinates[index] = parseInt(x)
                }

                onClicked: {
                    root.currentIndex = index
                    selectedRect.x = root.buttonCoordinates[index]
                }
            }
        }
    }
}
