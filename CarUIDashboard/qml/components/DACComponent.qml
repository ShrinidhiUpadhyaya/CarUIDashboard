import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.12

import "../components/singleComponents"

Rectangle {
    id: root

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

    RowLayout {
        id: buttonLayout

        anchors.fill: parent
        opacity: 0
        spacing: 2

        DIconButton {
            Layout.fillHeight: true
            Layout.fillWidth: true
            source: AppThemes.setIconSource("acIcon1.png")
            radius: AppThemes.primaryRadius
        }

        DSpinBox {
            Layout.fillHeight: true
            Layout.fillWidth: true
            radius: activeFocus ? AppThemes.primaryRadius : 0

        }

        DIconButton {
            Layout.fillHeight: true
            Layout.fillWidth: true
            source: AppThemes.setIconSource("fanIcon.png")
            radius: (buttonEnabled || activeFocus) ? AppThemes.primaryRadius : 0

        }

        DSpinBox {
            Layout.fillHeight: true
            Layout.fillWidth: true
            radius: activeFocus ? AppThemes.primaryRadius : 0

        }

        DIconButton {
            Layout.fillHeight: true
            Layout.fillWidth: true
            source: AppThemes.setIconSource("acIcon2.png")
            radius: AppThemes.primaryRadius

        }

    }
}
