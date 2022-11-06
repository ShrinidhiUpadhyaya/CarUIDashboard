import QtQuick 2.12
import QtQuick.Layouts 1.12

import "../../components"

Rectangle {
    id: root

    property alias source: image.source
    property alias iconSize: image.width
    property alias text1: text1.text
    property alias text2: text2.text
    property alias text1FontSize: text1.font.pixelSize
    property alias text2FontSize: text2.font.pixelSize

    color: AppThemes.primaryButtonColor
    radius: AppThemes.primaryRadius

    RowLayout {
        width: parent.width - AppThemes.primaryPadding
        height: parent.height
        anchors.centerIn: parent

        Item {
            Layout.fillHeight: true
            Layout.fillWidth: false
            Layout.preferredWidth: root.iconSize

            Image {
                id: image

                width: AppThemes.primaryIconSize
                height: width
                anchors.centerIn: parent
            }
        }

        Item {
            Layout.fillHeight: true
            Layout.fillWidth: true

            ColumnLayout {
                anchors.fill: parent
                spacing: 0

                DText {
                    id: text1

                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    verticalAlignment: Text.AlignVCenter
                    color: AppThemes.whiteColor
                }

                DText {
                    id: text2

                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    verticalAlignment: Text.AlignVCenter
                    color: AppThemes.activeTextColor
                }
            }
        }
    }
}

