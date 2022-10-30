import QtQuick 2.12

import "../../components"

Rectangle {
    id: root

    property alias source1: image1.source
    property alias source2: image2.source
//    property alias iconSize: image.width
    property bool buttonEnabled: false

    signal clicked()

    color: AppThemes.primaryButtonColor

    radius: 12
    clip: true

    Image {
        id: image1

        width: 32
        height: width
        x: root.buttonEnabled ? -width : (root.width / 2) -  (width / 2)
        anchors.verticalCenter: parent.verticalCenter
        opacity: root.buttonEnabled ? 0 : 1
        fillMode: Image.PreserveAspectFit
        mipmap: true

        Behavior on x {
            NumberAnimation { duration: 500;easing.type: Easing.InQuint}
        }

        Behavior on opacity {
            NumberAnimation { duration: 500;easing.type: Easing.InQuint }
        }
    }

    Image {
        id: image2

        width: 32
        height: width
        x: root.buttonEnabled ? (parent.width / 2) -  (width / 2) : root.width
        anchors.verticalCenter: parent.verticalCenter
        opacity: root.buttonEnabled ? 1 : 0
        fillMode: Image.PreserveAspectFit
        mipmap: true

        Behavior on x {
            NumberAnimation { duration: 500; easing.type: Easing.InQuint}
        }

        Behavior on opacity {
            NumberAnimation { duration: 500;easing.type: Easing.InQuint }
        }
    }

    MouseArea {
        anchors.fill: parent

        onClicked: {
            root.buttonEnabled = !root.buttonEnabled
            root.clicked()
        }
    }
}
