import QtQuick 2.12

import "../../components"

Rectangle {
    id: root

    property alias source: image.source
    property alias iconSize: image.width
    property bool buttonEnabled: false

    signal clicked()

    color: root.buttonEnabled ? AppThemes.primaryClickedColor : AppThemes.primaryButtonColor

    Behavior on color {
        ColorAnimation {
            duration: 200
        }
    }

    radius: 12

    Image {
        id: image

        width: 32
        height: width
        anchors.centerIn: parent
        fillMode: Image.PreserveAspectFit
        mipmap: true
    }

    MouseArea {
        anchors.fill: parent

        onClicked: {
            root.buttonEnabled = !root.buttonEnabled
            root.clicked()
        }
    }
}
