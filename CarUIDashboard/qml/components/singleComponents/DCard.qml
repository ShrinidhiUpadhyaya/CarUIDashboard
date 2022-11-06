import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

import "../../components"

Item {

    property alias iconSource: title.source
    property alias title: title.text
    property alias content: content.data

    ColumnLayout {
        anchors.fill: parent

        DRowIconText {
            id: title

            Layout.fillWidth: true
            Layout.fillHeight: false
            Layout.preferredHeight: 32

            color: AppThemes.transparentColor
        }

        Item {
            id: content

            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
