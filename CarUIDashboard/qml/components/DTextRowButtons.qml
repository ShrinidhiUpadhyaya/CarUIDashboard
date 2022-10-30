import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.12

Rectangle {
    id: root

    property alias model: repeater.model

    property int currentIndex: 0

    color: AppThemes.primaryButtonColor
    radius: 12

    Rectangle {
        id: mask

        anchors.fill: parent
        radius: 12
        visible: false
    }

    OpacityMask {
        anchors.fill: parent
        source: buttonLayout
        maskSource: mask
    }

    RowLayout {
        id: buttonLayout

        anchors.fill: parent
        spacing: 0
        opacity: 0

        Repeater {
            id: repeater

            Rectangle {
                id: buttonRect

                Layout.fillHeight: true
                Layout.fillWidth: true

                color: root.currentIndex === index ? AppThemes.primaryClickedColor : AppThemes.primaryButtonColor
                radius: 12

                Behavior on color {
                    ColorAnimation {
                        duration: 200
                    }
                }

                DText {
                    text: model.text
                    anchors.centerIn: parent
                    color: "white"
                }

                MouseArea {
                    anchors.fill: parent

                    onClicked: {
                        console.log("Clicked",root.currentIndex,index)
                        root.currentIndex = index
//                        buttonRect.clicked()
                    }
                }
            }
        }
    }
}
