import QtQuick 2.12
import QtQuick.Layouts 1.12

import "../components/singleComponents"

Rectangle {
    id: root

    property alias source: image.source
    property alias text: text.text
    property alias backgroundColor: root.color

    implicitHeight: AppThemes.primaryButtonSize
    implicitWidth: AppThemes.primaryButtonSize
    radius: AppThemes.primaryRadius
    color: AppThemes.transparentColor

    RowLayout {
        width: parent.width - AppThemes.primaryPadding
        height: parent.height - AppThemes.primarySpacing
        anchors.left: parent.left
        spacing: AppThemes.primarySpacing

        Image {
            id: image

            Layout.fillHeight: false
            Layout.preferredHeight: AppThemes.primaryIconSize
            Layout.fillWidth: false
            Layout.preferredWidth: height
        }

        DText {
            id: text

            Layout.fillHeight: true
            Layout.fillWidth: true
            color: AppThemes.whiteColor
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: AppThemes.primaryIconSize
        }
    }
}
