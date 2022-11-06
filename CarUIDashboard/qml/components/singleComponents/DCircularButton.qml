import QtQuick 2.12
import QtQuick.Controls 2.5
import QtGraphicalEffects 1.0

import "../../components"

DRect {
    id: root

    property alias source: icon.source

    property bool buttonEnabled: false

    height: parent.height
    width: height
    radius: height / 2
    color: root.buttonEnabled ? AppThemes.primaryClickedColor : AppThemes.primaryButtonColor
    border.color: root.activeFocus ? AppThemes.activeFocusBorderColor : AppThemes.transparentColor
    border.width: root.activeFocus ? AppThemes.activeBorderWidth : 0

    Behavior on color {
        ColorAnimation {
            duration: AppThemes.simpleAnimationDuration
        }
    }

    Image {
        id: icon

        width: AppThemes.largeIconSize
        height: AppThemes.largeIconSize
        anchors.centerIn: parent
    }

    onClicked: {
        root.buttonEnabled = !root.buttonEnabled;
    }
}

