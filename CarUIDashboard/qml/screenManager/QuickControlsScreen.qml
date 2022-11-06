import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

import "../components"
import "../components/singleComponents"

DSettingScreen {
    width: parent.width
    height: parent.height
    title: qsTr("Quick Controls")

    content: [
        ColumnLayout {
            anchors.fill: parent

            DCard {
                Layout.fillWidth: true
                Layout.fillHeight: true
                iconSource: AppThemes.setIconSource("settingsIcon/quickControlsIcon.png")
                title: qsTr("Display Brightness")
                content:[
                    RowLayout {
                        anchors.fill: parent
                        spacing: AppThemes.primarySpacing

                        DSlider {
                            Layout.fillWidth: true
                            Layout.fillHeight: false
                            Layout.preferredHeight: AppThemes.primaryButtonSize
                            Layout.alignment: Qt.AlignTop
                        }

                        DTextButton {
                            Layout.fillHeight: false
                            Layout.fillWidth: false
                            Layout.preferredHeight: AppThemes.primaryButtonSize
                            Layout.preferredWidth: parent.width * 0.15
                            Layout.alignment: Qt.AlignTop
                            text: qsTr("Auto")
                        }
                    }
                ]
            }

            DCard {
                Layout.fillWidth: true
                Layout.fillHeight: true
                title: qsTr("Exterior Lights")
                iconSource: AppThemes.setIconSource("carLight.png")
                content: [
                    DTextRowButtons {
                        width: parent.width
                        height: AppThemes.primaryButtonSize
                        model: DModels.quickControlsLightList
                    }
                ]
            }

            Item {
                Layout.fillWidth: true
                Layout.fillHeight: true

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
                Layout.fillWidth: true
                Layout.fillHeight: true
                title: qsTr("Interior Lights")
                iconSource: AppThemes.setIconSource("interiorLight.png")
                content: [
                    DTextRowButtons {
                        width: parent.width
                        height: AppThemes.primaryButtonSize
                        model: DModels.quickControlsInteriorLightList
                    }
                ]
            }

            DCard {
                Layout.fillWidth: true
                Layout.fillHeight: true
                title: qsTr("Steering Wheel")
                iconSource: AppThemes.setIconSource("steeringWheel.png")
                content: [
                    DTextRowButtons {
                        width: parent.width
                        height: AppThemes.primaryButtonSize
                        model: DModels.quickControlsSteeringWheelList
                    }
                ]
            }
        }
    ]
}
