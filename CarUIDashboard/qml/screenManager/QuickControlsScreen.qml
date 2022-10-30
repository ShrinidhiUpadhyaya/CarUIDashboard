import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

import "../components"

import "../components/singleComponents"

DSettingScreen {
    width: parent.width
    height: parent.height
    title: "Quick Controls"

    content: [
        ColumnLayout {
            anchors.fill: parent

            DCard {
                Layout.fillHeight: true
                Layout.fillWidth: true
                iconSource: "qrc:/qml/icons/settingsIcon/quickControlsIcon.png"
                title: "Display Brightness"
                content:[
                    RowLayout {
                        anchors.fill: parent
                        spacing: 16

                        DSlider {
                            Layout.fillHeight: false
                            Layout.preferredHeight: 40
                            Layout.fillWidth: true
                            Layout.alignment: Qt.AlignTop
                        }

                        DButton {
                            Layout.fillHeight: false
                            Layout.fillWidth: false
                            Layout.preferredHeight: 40
                            Layout.preferredWidth: parent.width * 0.15
                            Layout.alignment: Qt.AlignTop
                        }
                    }
                ]
            }

            DCard {
                Layout.fillHeight: true
                Layout.fillWidth: true
                title: "Exterior Lights"
                iconSource: "qrc:/qml/icons/carLight.png"
                content: [
                    DTextRowButtons {
                        width: parent.width
                        height: 40
                        model: DModels.quickControlsLightList
                    }
                ]
            }

            Item {
                Layout.fillHeight: true
                Layout.fillWidth: true

                Row {
                    anchors.fill: parent

                    DTitleCircularButtons {
                        width: parent.width
                        height: parent.height / 1.5
                        model: DModels.quickControlsFogModelList
                    }
                }
            }

            DCard {
                Layout.fillHeight: true
                Layout.fillWidth: true
                title: "Interior Lights"
                iconSource: "qrc:/qml/icons/interiorLight.png"
                content: [
                    DTextRowButtons {
                        width: parent.width
                        height: 40
                        model: DModels.quickControlsInteriorLightList
                    }
                ]
            }

            DCard {
                Layout.fillHeight: true
                Layout.fillWidth: true
                title: "Steering Wheel"
                iconSource: "qrc:/qml/icons/steeringWheel.png"
                content: [
                    DTextRowButtons {
                        width: parent.width
                        height: 40
                        model: DModels.quickControlsSteeringWheelList
                    }
                ]
            }
        }

    ]
}
