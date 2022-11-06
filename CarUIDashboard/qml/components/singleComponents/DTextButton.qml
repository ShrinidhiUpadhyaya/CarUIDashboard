import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

import "../../components"

DRect {
    id: root

    property bool buttonEnabled: false

    width: parent.width
    height: parent.height
    radius: AppThemes.primaryRadius
    color: root.buttonEnabled ? AppThemes.primaryClickedColor : AppThemes.primaryButtonColor
    border.color: root.activeFocus ? AppThemes.activeFocusBorderColor : AppThemes.transparentColor
    border.width: root.activeFocus ? AppThemes.activeBorderWidth : 0

    DText {
        text: "Auto"
        anchors.centerIn: parent
        color: AppThemes.whiteColor
    }

    onClicked: {
        root.buttonEnabled = !root.buttonEnabled
    }
}
