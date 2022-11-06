import QtQuick 2.12

import "../../components"

Text {
    id: root

    color: AppThemes.whiteColor

    font.bold: false
    font.family: AppThemes.fontFamilyType
    font.pixelSize: AppThemes.primaryFontSize

    Behavior on scale {
        SmoothedAnimation { duration: AppThemes.simpleAnimationDuration }
    }

    Behavior on font.pixelSize {
        NumberAnimation {
            target: root
            property: "font.pixelSize"
            duration: AppThemes.averageAnimationDuration
            easing.type: Easing.InOutQuad
        }
    }
}
