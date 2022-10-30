import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

import "../components"

Rectangle {
    width: parent.width
    height: parent.height
    radius: 12
    color: AppThemes.primaryButtonColor

    DText {
        text: "Auto"
        anchors.centerIn: parent
        color: "white"
    }
}
