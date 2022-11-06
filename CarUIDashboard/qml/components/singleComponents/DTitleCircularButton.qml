import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.12

import "../../components"

Item {
    id: root

    property alias title: title.text
    property alias source: button.source

    ColumnLayout {
        anchors.fill: parent

        DText {
            id: title

            Layout.fillWidth: true
            Layout.fillHeight: false
            Layout.preferredHeight: AppThemes.primaryIconSize
            color: AppThemes.whiteColor
            horizontalAlignment: Text.AlignHCenter
        }

        DCircularButton {
            id: button

            Layout.fillWidth: false
            Layout.preferredWidth: height
            Layout.fillHeight: true
            Layout.alignment: Qt.AlignHCenter
        }
    }
}
