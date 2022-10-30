import QtQuick 2.12
import QtQuick.Layouts 1.12

Item {
    id: root

    property alias model: repeater.model

    property int currentIndex: 0
    property var buttonCoordinates: [0]


    Timer {
        interval: 10000
        running: true
        onTriggered: {
            console.log(root.buttonCoordinates)
        }
    }

    Rectangle {
        id: selectedRect

        width: 48
        height: 48
        radius: 12
        x: root.buttonCoordinates[currentIndex]
        color: AppThemes.primaryButtonColor

        Behavior on x {
            NumberAnimation {
                duration: 200
            }
        }
    }

    RowLayout {
        anchors.fill: parent
        spacing: 0

        Repeater {
            id: repeater

            Item {
                Layout.fillHeight: true
                Layout.fillWidth: true

                Image {
                    width: 24
                    height: 24
                    anchors.centerIn: parent
                    source: index === root.currentIndex ? model.selectedSource : model.source
                }

                onXChanged: {
                    console.log(parseInt(x))
                    root.buttonCoordinates[index] = parseInt(x)
                }



                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        root.currentIndex = index
                        selectedRect.x = root.buttonCoordinates[index]
                    }
                }
            }
        }
    }



    //    RowLayout {
    //        height: parent.height
    //        width: parent.width - 32
    //        spacing: 0
    //        anchors.centerIn: parent

    //        Repeater {
    //            id: repeater

    //            Rectangle {
    ////                Layout.fillWidth: false
    ////                Layout.preferredWidth: 32
    ////                Layout.fillHeight: false
    ////                Layout.preferredHeight: 32
    //                Layout.fillHeight: true
    //                Layout.fillWidth: true
    //                //                Layout.alignment: Qt.AlignCenter
    //                color: "green"
    //                border.color: "blue"

    //                Image {
    //                    anchors.fill: parent
    //                    source: index === root.currentIndex ? model.selectedSource : model.source
    //                }

    //                onXChanged: {
    //                    console.log(parseInt(x))
    //                    root.buttonCoordinates[index] = parseInt(x)
    //                }

    //                MouseArea {
    //                    anchors.fill: parent
    //                    onClicked: {
    //                        selectedRect.x = root.buttonCoordinates[index]
    //                    }
    //                }
    //            }
    //        }
    //    }



}
