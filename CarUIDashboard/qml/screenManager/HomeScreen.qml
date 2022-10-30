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
            height: parent.height - 32
            width: parent.width - 32
            anchors.centerIn: parent
            spacing: 5

            Rectangle {
                Layout.fillWidth: true
                Layout.fillHeight: true
                color: "transparent"

                //            Plugin {
                //                  id: mapPlugin
                //                  name: "osm" // "mapboxgl", "esri", ...
                //                  // specify plugin parameters if necessary
                //                  // PluginParameter {
                //                  //     name:
                //                  //     value:
                //                  // }
                //              }

                //              Map {
                //                  anchors.fill: parent
                //                  plugin: mapPlugin
                //                  center: QtPositioning.coordinate(59.91, 10.75) // Oslo
                //                  zoomLevel: 14
                //              }

            }

            Rectangle {
                Layout.fillWidth: true
                Layout.fillHeight: false
                Layout.preferredHeight: parent.height * 0.3
                color: "transparent"

                Rectangle {
                    width: parent.width / 2
                    height: parent.height * 0.6
                    color: "transparent"
                    anchors.centerIn: parent

                    Image {
                        anchors.fill: parent
                        source: "qrc:/qml/icons/mainCarImage2.png"
                    }
                }
            }

            Rectangle {
                Layout.fillWidth: true
                Layout.fillHeight: false
                Layout.preferredHeight: parent.height * 0.1
                color: "transparent"

                RowLayout {
                    anchors.fill: parent
                    spacing: 0

                    Item {
                        Layout.fillHeight: true
                        Layout.fillWidth: false
                        Layout.preferredWidth: parent.width * 0.2

                        DIconButton {
                            width: height
                            height: 64
                            source: "qrc:/qml/icons/carLight.png"
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.leftMargin: parent.height * 0.2
                        }
                    }

                    Rectangle {
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        color: "transparent"
                        border.color: "red"

                        //                    DRowButtons {
                        //                        width: 320
                        //                        height: 64
                        //                        anchors.centerIn: parent
                        //                    }
                    }

                    Item {
                        Layout.fillHeight: true
                        Layout.fillWidth: false
                        Layout.preferredWidth: parent.width * 0.2

                        DIconButton {
                            width: height
                            height: 64
                            source: "qrc:/qml/icons/heatingIcon.png"
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.right: parent.right
                        }
                    }
                }





            }

            Rectangle {
                Layout.fillWidth: true
                Layout.fillHeight: false
                Layout.preferredHeight: 48
                color: "transparent"

                Item {
                    width: 240
                    height: parent.height
                    anchors.centerIn: parent

                    DNavigationButton {
                        height: 48
                        width: parent.width
                        anchors.centerIn: parent
                        model: DModels.bottomNavigationIconList
                    }
                }
            }
        }

    ]
        function loadScreen(index) {
            switch(index) {
            case 0:
                stackView.push("qrc:/qml/screenManager/RoomScreen.qml");
                break;
            default:
                stackView.push("qrc:/qml/screenManager/RoomScreen.qml");
                break;
            }
        }
}
