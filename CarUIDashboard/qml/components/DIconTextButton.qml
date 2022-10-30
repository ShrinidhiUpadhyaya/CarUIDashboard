import QtQuick 2.12
import QtQuick.Layouts 1.12

Rectangle {
    id: root

    property alias source: image.source
    property alias text: text.text
    property alias backgroundColor: root.color
    signal clicked();

    implicitHeight: 48
    implicitWidth: 48
    radius: 12
    color: "#2F3643"

    Behavior on color {
        ColorAnimation {
            duration: 200
        }
    }

    RowLayout {
        width: parent.width - 32
        height: parent.height - 16
        anchors.centerIn: parent
        spacing: 16

        Image {
            id: image

            Layout.fillHeight: false
            Layout.preferredHeight: 24
            Layout.fillWidth: false
            Layout.preferredWidth: height
        }

        DText {
            id: text

            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "white"
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 16           
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            root.clicked();
        }
    }
}
