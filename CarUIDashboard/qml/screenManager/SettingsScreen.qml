import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

import "../components"

AppScreen {
    id: root

    onActiveFocusChanged: {
        console.log("ActiveFocus")

        if(activeFocus) {
            settingsOptionsRect.state = "reanchored"
            myRect.state = "reanchored"
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
                    AnchorAnimation { duration: 1000;easing.type: Easing.InOutQuad;}
                }

                ListView {
                    id: settingsListView

                    width: parent.width - 32
                    height: 48 * DModels.settingsIconList.count
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top
                    anchors.topMargin: 32
                    model: DModels.settingsIconList

                    delegate: DIconTextButton {
                        width: parent.width
                        height: 48
                        source: model.source
                        text: model.text
                        color: index === settingsListView.currentIndex ? "#2F3643" : "transparent"

                        onClicked: {
                            settingsListView.currentIndex = index;
                        }
                    }
                }
            }

            Rectangle {
                id: myRect

                height: parent.height
                anchors.left: parent.left
                anchors.leftMargin: parent.width
                width: root.width - settingsOptionsRect.width
                color: "#202734"

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        myRect.state = "reanchored"
                    }
                }

                states: State {
                    name: "reanchored"

                    AnchorChanges {
                        target: myRect
                        anchors.left: parent.left
                    }
                    PropertyChanges {
                        target: myRect
                        anchors.leftMargin: settingsOptionsRect.width
                    }
                }

                transitions: Transition {
                    AnchorAnimation { duration: 1100;easing.type: Easing.InOutQuad }
                }

                Item {
                    width: parent.width -32
                    height: parent.height -32
                    anchors.centerIn: parent

                    QuickControlsScreen {
                        anchors.fill: parent
                    }
                }
            }
        }

    ]
}
