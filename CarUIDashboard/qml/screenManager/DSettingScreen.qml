import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

import "../components"
import "../components/singleComponents"

Item {

    property alias title: title.text
    property alias content: content.data

    ColumnLayout {
        anchors.fill: parent

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: false
            Layout.preferredHeight: parent.height * 0.1
            color: AppThemes.transparentColor

            RowLayout {
                anchors.fill: parent

                DText {
                    id: title

                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    verticalAlignment: Text.AlignVCenter
                    color: AppThemes.whiteColor
                    font.pixelSize: AppThemes.largeFontSize
                }
            }
        }

        Rectangle {
            id: content

            Layout.fillWidth: true
            Layout.fillHeight: true
            color: AppThemes.transparentColor
        }
    }
}
