import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.12

import "../components/singleComponents"

Rectangle {
    id: root

    property alias model: repeater.model

    color: AppThemes.primaryButtonColor
    radius: AppThemes.primaryRadius

    ColumnLayout {
        height: parent.height - (AppThemes.primarySpacing / 2)
        width: parent.width / 1.2
        anchors.horizontalCenter: parent.horizontalCenter

        Item {
            Layout.fillWidth: true
            Layout.fillHeight: false
            Layout.preferredHeight: 2

            RowLayout {
                anchors.fill: parent
                spacing: 0

                Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    radius: 2
                    color: "#747B88"
                }
                Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: false
                    Layout.preferredWidth: parent.width * 0.2
                    radius: 2
                    color: AppThemes.primaryClickedColor
                }
                Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: false
                    Layout.preferredWidth: parent.width * 0.1
                    radius: 2
                    color: "red"
                }
                Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    radius: 2
                    color: "#FBAF3E"
                }
                Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    radius: 2
                    color: AppThemes.primaryClickedColor
                }
            }
        }

        RowLayout {
            id: layout

            Layout.fillWidth: true
            Layout.fillHeight: true

            spacing: 0

            Repeater {
                id: repeater

                DIconTextCard {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    source: model.source
                    text1: model.text1
                    text2: model.text2
                    text1FontSize: 12
                    text2FontSize: AppThemes.primaryFontSize
                }
            }
        }
    }
}
