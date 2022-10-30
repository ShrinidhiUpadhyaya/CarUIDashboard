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
            Layout.preferredHeight: 22
            color: "white"
            horizontalAlignment: Text.AlignHCenter
        }

        DCircularButton {
            id: button

            Layout.fillHeight: true
            Layout.fillWidth: false
            Layout.preferredWidth: height
            Layout.alignment: Qt.AlignHCenter
        }
    }
}
