import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

import "../components"
import "../components/singleComponents"

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
        id: layout

        width: parent.width
        height: parent.height - (AppThemes.primarySpacing / 2)
        anchors.top: parent.top
        anchors.topMargin: AppThemes.primarySpacing / 2
        spacing: 0

        Rectangle {
            Layout.fillWidth: false
            Layout.preferredWidth: parent.width - AppThemes.primaryPadding
            Layout.fillHeight: false
            Layout.preferredHeight: parent.height * 0.02
            Layout.alignment: Qt.AlignHCenter
            color: AppThemes.transparentColor

            RowLayout {
                anchors.fill: parent

                Item {
                    Layout.fillWidth: false
                    Layout.preferredWidth: AppThemes.topBarIconSize
                    Layout.fillHeight: false
                    Layout.preferredHeight: AppThemes.topBarIconSize

                    Image {
                        anchors.fill: parent
                        source: AppThemes.setIconSource("userIcon.png")
                    }
                }

                Item {
                    Layout.fillWidth: true
                    Layout.fillHeight: false
                    Layout.preferredHeight: AppThemes.topBarIconSize

                    DText {
                        id: text

                        text: qsTr("Shrinidhi Upadhyaya")
                        color: AppThemes.whiteColor
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: AppThemes.smallFontSize
                    }
                }

                Item {
                    Layout.fillWidth: false
                    Layout.preferredWidth: timeText.width + tempText.width
                    Layout.fillHeight: true
                    Layout.alignment: Qt.AlignCenter

                    DText {
                        id: timeText

                        text:  time + "     "
                        font.pixelSize: AppThemes.smallFontSize

                        property string time: Qt.formatDateTime(new Date(), "hh:mm:ss")

                        Timer {
                            running: true
                            interval: 1000
                            repeat: true
                            onTriggered: {
                                 parent.time = Qt.formatDateTime(new Date(), "hh:mm:ss");
                            }
                        }
                    }

                    DText {
                        id: tempText

                        anchors.left: timeText.right
                        text: "-     " + "17 °C"
                        color: AppThemes.whiteColor
                        font.pixelSize: AppThemes.smallFontSize

                    }
                }

                Item {
                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    Row {
                        anchors.right: parent.right
                        spacing: AppThemes.primarySpacing

                        Item {
                            width: AppThemes.topBarIconSize
                            height: width

                            Image {
                                anchors.fill: parent
                                source: AppThemes.setIconSource("bluetoothIcon.png")
                            }
                        }

                        Item {
                            width: 28
                            height: AppThemes.topBarIconSize

                            Image {
                                id: networkIcon

                                width: AppThemes.topBarIconSize
                                height: width
                                source: AppThemes.setIconSource("cellularIcon.png")
                            }

                            DText {
                                text: qsTr("4G")
                                color: AppThemes.whiteColor
                                font.pixelSize: AppThemes.smallFontSize
                                anchors.left: networkIcon.right
                            }
                        }
                    }
                }
            }
        }

        Item {
            id: content

            Layout.fillWidth: true
            Layout.fillHeight: true
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
