import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

import "../../components"

Rectangle {
    id: root

    property int value: 10

    radius: AppThemes.primaryRadius
    color: AppThemes.primaryButtonColor


    ColumnLayout {
        anchors.fill: parent

        Item {
            Layout.fillHeight: true
            Layout.fillWidth: true

            Image {
                width: AppThemes.smallIconSize
                height: AppThemes.smallIconSize
                anchors.centerIn: parent
                source: AppThemes.setIconSource("upArrowIcon.png")
            }
        }

        Item {
            Layout.fillHeight: true
            Layout.fillWidth: true

            TextInput {
                    z: 2
                    text: root.value

                    color: "#21be2b"
                    selectionColor: "#21be2b"
                    selectedTextColor: "#ffffff"
                    horizontalAlignment: Qt.AlignHCenter
                    verticalAlignment: Qt.AlignVCenter
                    anchors.centerIn: parent
                    width: parent.width

                    readOnly: !root.editable
//                    validator: root.validator
                    inputMethodHints: Qt.ImhFormattedNumbersOnly
                }
        }

        Item {
            Layout.fillHeight: true
            Layout.fillWidth: true

            Image {
                width: AppThemes.smallIconSize
                height: AppThemes.smallIconSize
                anchors.centerIn: parent
                source: AppThemes.setIconSource("upArrowIcon.png")
                rotation: 180
            }
        }
    }
}
