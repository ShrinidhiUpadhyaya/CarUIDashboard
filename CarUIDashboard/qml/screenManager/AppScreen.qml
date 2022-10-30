import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

import "../components"

import AppThemes 1.0

Item {
    id: root

    property alias backgroundColor: background.color
    property alias content: content.data
    property real screenIndex: -1
    property bool isOverlay: false

//    visible: isOverlay ? true : currentScreenIndex === screenIndex
    focus: true

    Rectangle {
        id: background

        anchors.fill: parent
        color: AppThemes.screenColor
    }

    ColumnLayout {
        anchors.fill: parent

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: false
            Layout.preferredHeight: parent.height * 0.04
            color: "transparent"

            RowLayout {
                anchors.fill: parent

                Item {
                    Layout.fillHeight: false
                    Layout.fillWidth: false
                    Layout.preferredHeight: 16
                    Layout.preferredWidth: 16

                    Image {
                        anchors.fill: parent
                        source: "qrc:/qml/icons/userIcon.png"
                    }
                }

                Item {
                    Layout.fillHeight: false
                    Layout.fillWidth: true
                    Layout.preferredHeight: 16

                    DText {
                        id: text

                        text: "Shrinidhi Upadhyaya"
                        color: "white"
                        anchors.verticalCenter: parent.verticalCenter
                    }
                }

                Item {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                }

                Item {
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignCenter

                    Rectangle {
                        anchors.fill: parent
                        color: "transparent"
                        border.color: "red"
                    }
                }

                Item {
                    Layout.fillHeight: false
                    Layout.fillWidth: false
                    Layout.preferredHeight: 16
                    Layout.preferredWidth: 16

                    Image {
                        anchors.fill: parent
                        source: "qrc:/qml/icons/bluetoothIcon.png"
                    }
                }

                Item {
                    Layout.fillHeight: false
                    Layout.fillWidth: false
                    Layout.preferredHeight: 16
                    Layout.preferredWidth: 16

                    Image {
                        anchors.fill: parent
                        source: "qrc:/qml/icons/cellularIcon.png"
                    }
                }

                Item {
                    Layout.fillHeight: false
                    Layout.fillWidth: false
                    Layout.preferredHeight: 16
                    Layout.preferredWidth: 16

                    DText {
                        text: "4G"
                        color: "white"
                    }
                }
            }
        }

        Item {
            id: content

            Layout.fillHeight: true
            Layout.fillWidth: true
        }

    }


    Keys.onPressed: {
        if (isOverlay && event.key === Qt.Key_Back) {
            if(stackView.depth > 1) {
                stackView.pop();
            } else {
                stackView.clear();
            }
            event.accepted = true;
        }
    }

    Component.onCompleted: {
        root.forceActiveFocus()
    }
}
