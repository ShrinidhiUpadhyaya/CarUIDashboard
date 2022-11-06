import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

import "../components"

AppScreen {
    id: root

    onActiveFocusChanged: {
        if(activeFocus) {
            settingsOptionsRect.state = "reanchored"
//            settingsRect.state = "reanchored"
        }
    }

    content: [

        Item {
            anchors.fill: parent

            Rectangle {
                id: settingsOptionsRect
                height: parent.height
                width: parent.width * 0.35
                anchors.left: parent.left
                anchors.leftMargin: parent.width / 2

                color: "#1A1E2C"

                states: State {
                    name: "reanchored"

                    AnchorChanges {
                        target: settingsOptionsRect
                        anchors.left: parent.left
                    }

                    PropertyChanges {
                        target: settingsOptionsRect
                        anchors.leftMargin: 0
                    }
                }

                transitions: Transition {
                    AnchorAnimation { duration: 1000;}
                }

                ListView {
                    id: settingsListView

                    width: parent.width - AppThemes.primaryPadding
                    height: AppThemes.primaryButtonSize * DModels.settingsIconList.count
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top
                    anchors.topMargin: AppThemes.primaryPadding
                    model: DModels.settingsIconList

                    delegate: DIconTextButton {
                        width: parent.width
                        height: AppThemes.primaryButtonSize
                        source: model.source
                        text: model.text
                        color: index === settingsListView.currentIndex ? AppThemes.primaryButtonColor : AppThemes.transparentColor

                        onClicked: {
                            settingsListView.currentIndex = index;
                        }
                    }
                }
            }

//            Rectangle {
//                id: settingsRect

//                height: parent.height
//                anchors.left: parent.left
//                anchors.leftMargin: parent.width
//                width: root.width - settingsOptionsRect.width
//                color: "#202734"

//                MouseArea {
//                    anchors.fill: parent
//                    onClicked: {
//                        settingsRect.state = "reanchored"
//                    }
//                }

//                states: State {
//                    name: "reanchored"

//                    AnchorChanges {
//                        target: settingsRect
//                        anchors.left: parent.left
//                    }
//                    PropertyChanges {
//                        target: settingsRect
//                        anchors.leftMargin: settingsOptionsRect.width
//                    }
//                }

//                transitions: Transition {
//                    AnchorAnimation { duration: 1100;}
//                }

//                Item {
//                    width: parent.width - AppThemes.primaryPadding
//                    height: parent.height - AppThemes.primaryPadding
//                    anchors.centerIn: parent

//                    QuickControlsScreen {
//                        anchors.fill: parent
//                    }
//                }
//            }

        }
    ]
}
