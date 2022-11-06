import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12
import QtLocation 5.6
import QtPositioning 5.6

import AppThemes 1.0
import DModels 1.0

import "../components"
import "../components/singleComponents"

AppScreen {
    id: root

    property real securitySliderMaxValue: 5
    property real securitySliderValue: 4

    content:[

        ColumnLayout {
            height: parent.height - AppThemes.primarySpacing
            width: parent.width
            anchors.centerIn: parent
            spacing: 5

            Item {
                Layout.fillWidth: true
                Layout.fillHeight: false
                Layout.preferredHeight: parent.height * 0.5

                Image {
                    anchors.fill: parent
                    source: AppThemes.setIconSource("map.png")
                }

                DIconButton {
                    width: AppThemes.primaryButtonSize
                    height: width
                    source: AppThemes.setIconSource("navigationIcon.png")
                    anchors.bottom: mapZoomButtons.top
                    anchors.bottomMargin: AppThemes.screenMargin
                    anchors.left: parent.left
                    anchors.leftMargin: AppThemes.screenMargin
                    iconSize: AppThemes.primaryIconSize
                }

                DTextButtons {
                    id: mapZoomButtons

                    width: AppThemes.primaryButtonSize
                    height: width * rows
                    model: DModels.mapZoomButtons
                    rows: 2
                    columns: 1
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: AppThemes.screenMargin
                }

                DIconTextCards {
                    width: parent.width / 1.5
                    height: AppThemes.primaryButtonSize
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: AppThemes.screenMargin
                    anchors.horizontalCenter: parent.horizontalCenter
                    model: DModels.mapNavDataModelList
                }

                DIconTextCard {
                    height: AppThemes.largeButtonSize
                    width: parent.width / 2.5
                    source: AppThemes.setIconSource("mapNavigationLeftTurnIcon.png")
                    iconSize: AppThemes.primaryButtonSize
                    text1: qsTr("655 m")
                    text1FontSize: AppThemes.largeFontSize
                    text2: qsTr("towards Madison Park")
                    text2FontSize: AppThemes.primaryFontSize
                    color: AppThemes.primaryClickedColor
                    anchors.left: parent.left
                    anchors.leftMargin: AppThemes.screenMargin
                    anchors.top: parent.top
                    anchors.topMargin: AppThemes.primarySpacing
                }
            }

            ColumnLayout {
                Layout.fillHeight: true
                Layout.fillWidth: false
                Layout.preferredWidth: parent.width - AppThemes.primaryPadding
                Layout.alignment: Qt.AlignCenter
                spacing: AppThemes.primarySpacing

                Rectangle {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.preferredHeight: parent.height * 0.5
                    color: AppThemes.transparentColor

                    Rectangle {
                        width: parent.width / 2
                        height: parent.height * 0.6
                        color: AppThemes.transparentColor
                        anchors.centerIn: parent

                        Image {
                            anchors.fill: parent
                            source: AppThemes.setIconSource("mainCarImage2.png")
                            mipmap: true
                        }
                    }
                }

                Rectangle {
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    Layout.preferredHeight: parent.height * 0.1
                    color: AppThemes.transparentColor

                    RowLayout {
                        anchors.fill: parent
                        spacing: 0

                        Item {
                            Layout.fillHeight: true
                            Layout.fillWidth: false
                            Layout.preferredWidth: parent.width * 0.2

                            DIconButton {
                                width: AppThemes.largeButtonSize
                                height: width
                                source: AppThemes.setIconSource("carLight.png")
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.leftMargin: parent.height * 0.2
                            }
                        }

                        Rectangle {
                            Layout.fillHeight: true
                            Layout.fillWidth: true
                            color: AppThemes.transparentColor
                            border.color: "red"

                            DSpinBox {
                                width: 100
                                height: 50
                            }
                        }

                        Item {
                            Layout.fillHeight: true
                            Layout.fillWidth: false
                            Layout.preferredWidth: parent.width * 0.2

                            DIconButton {
                                width: AppThemes.largeButtonSize
                                height: width
                                source: AppThemes.setIconSource("heatingIcon.png")
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.right: parent.right
                            }
                        }
                    }
                }

                Rectangle {
                    Layout.fillWidth: true
                    Layout.fillHeight: false
                    Layout.preferredHeight: AppThemes.primaryButtonSize
                    color: AppThemes.transparentColor

                    Item {
                        width: 432
                        height: parent.height
                        anchors.centerIn: parent

                        DNavigationButton {
                            height: AppThemes.primaryButtonSize
                            width: parent.width
                            anchors.centerIn: parent
                            model: DModels.bottomNavigationIconList
                        }
                    }
                }
            }
        }
    ]

    function loadScreen(index) {
        switch(index) {
        case 0:
            stackView.push(AppThemes.setFileSource("RoomScreen.qml"));
            break;
        default:
            stackView.push(AppThemes.setFileSource("RoomScreen.qml"));
            break;
        }
    }
}
