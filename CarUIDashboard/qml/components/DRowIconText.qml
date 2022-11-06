import QtQuick 2.12
import QtQuick.Layouts 1.12

import "../components/singleComponents"

Rectangle {
    id: root

    property alias source: image.source
    property alias text: text.text
    property alias backgroundColor: root.color

    implicitWidth: AppThemes.primaryButtonSize
    implicitHeight: AppThemes.primaryButtonSize
    radius: AppThemes.primaryRadius
    color: AppThemes.transparentColor

    RowLayout {
        width: parent.width - AppThemes.primaryPadding
        height: parent.height - AppThemes.primarySpacing
        anchors.left: parent.left
        spacing: AppThemes.primarySpacing

        Image {
            id: image

            Layout.fillWidth: false
            Layout.preferredWidth: height
            Layout.fillHeight: false
            Layout.preferredHeight: AppThemes.primaryIconSize

        }

        DText {
            id: text

            Layout.fillWidth: true
            Layout.fillHeight: true
            color: AppThemes.whiteColor
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: AppThemes.primaryIconSize
        }
    }
}
