import QtQuick 2.12

import "../../components"

DRect {
    id: root

    property alias source: image.source
    property alias iconSize: image.width

    property bool buttonEnabled: false

    color: root.buttonEnabled ? AppThemes.primaryClickedColor : AppThemes.primaryButtonColor
    border.color: root.activeFocus ? AppThemes.activeFocusBorderColor : AppThemes.transparentColor
    border.width: root.activeFocus ? AppThemes.activeBorderWidth : 0
    radius: AppThemes.primaryRadius

    Behavior on color {
        ColorAnimation {
            duration: AppThemes.simpleAnimationDuration
        }
    }

    Image {
        id: image

        width: AppThemes.largeIconSize
        height: width
        anchors.centerIn: parent
        fillMode: Image.PreserveAspectFit
        mipmap: true
    }

    onClicked: {
        root.buttonEnabled = !root.buttonEnabled
    }
}
