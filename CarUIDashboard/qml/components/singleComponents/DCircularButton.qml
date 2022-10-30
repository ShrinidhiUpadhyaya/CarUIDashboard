import QtQuick 2.12
import QtQuick.Controls 2.5
import QtGraphicalEffects 1.0

import "../../components"

Rectangle {
    id: root

    property alias source: icon.source

    property bool buttonEnabled: false

    signal clicked();

    height: parent.height
    width: height
    radius: height / 2
    color: root.buttonEnabled ? AppThemes.primaryClickedColor : AppThemes.primaryButtonColor

    Behavior on color {
        ColorAnimation {
            duration: 200
        }
    }

    Image {
        id: icon

        width: 32
        height: 32
        anchors.centerIn: parent
    }

    MouseArea {
        anchors.fill: parent

        onClicked: {
            root.buttonEnabled = !root.buttonEnabled;
            root.clicked();
        }
    }
}

