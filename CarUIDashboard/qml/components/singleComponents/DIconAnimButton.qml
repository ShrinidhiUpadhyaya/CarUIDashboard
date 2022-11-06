import QtQuick 2.12

import "../../components"

DRect {
    id: root

    property alias source1: image1.source
    property alias source2: image2.source
    property bool buttonEnabled: false

    color: AppThemes.primaryButtonColor
    border.color: root.activeFocus ? AppThemes.activeFocusBorderColor : AppThemes.transparentColor
    border.width: root.activeFocus ? AppThemes.activeBorderWidth : 0

    radius: AppThemes.primaryRadius
    clip: true

    Image {
        id: image1

        width: AppThemes.largeIconSize
        height: width
        x: root.buttonEnabled ? -width : (root.width / 2) -  (width / 2)
        anchors.verticalCenter: parent.verticalCenter
        opacity: root.buttonEnabled ? 0 : 1
        fillMode: Image.PreserveAspectFit
        mipmap: true

        Behavior on x {
            NumberAnimation { duration: 500;easing.type: Easing.InQuint}
        }

        Behavior on opacity {
            NumberAnimation { duration: 500;easing.type: Easing.InQuint }
        }
    }

    Image {
        id: image2

        width: AppThemes.largeIconSize
        height: width
        x: root.buttonEnabled ? (parent.width / 2) -  (width / 2) : root.width
        anchors.verticalCenter: parent.verticalCenter
        opacity: root.buttonEnabled ? 1 : 0
        fillMode: Image.PreserveAspectFit
        mipmap: true

        Behavior on x {
            NumberAnimation { duration: AppThemes.screenTransistionDuration; easing.type: Easing.InQuint }
        }

        Behavior on opacity {
            NumberAnimation { duration: AppThemes.screenTransistionDuration; easing.type: Easing.InQuint }
        }
    }

    onClicked: {
        root.buttonEnabled = !root.buttonEnabled;
    }
}
