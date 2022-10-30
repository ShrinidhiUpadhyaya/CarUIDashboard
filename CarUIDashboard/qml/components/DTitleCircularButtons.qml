import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.12

import "../components/singleComponents"


Item {
    id: root

    property alias model: repeater.model

    GridLayout {
        height: parent.height
        width: repeater.count * (height)
        rows: 2

        Repeater {
            id: repeater

            DTitleCircularButton {
                Layout.fillHeight: true
                Layout.fillWidth: true
                title: model.text
                source: model.source
            }
        }
    }
}
