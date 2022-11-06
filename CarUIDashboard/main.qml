import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

import AppThemes 1.0

import "qml/screenManager"
import "qml/components/singleComponents"

Window {
    visible: true
    width: 720
    height: 900
    maximumHeight: 900
    maximumWidth: 720
    minimumHeight: 900
    minimumWidth: 720
    title: qsTr("Hello World")


    Rectangle {
        anchors.fill: parent
        color: AppThemes.screenColor
    }

    StackView {
        id: stackView

        anchors.fill: parent
        initialItem: AppThemes.setFileSource("HomeScreen.qml")

        pushEnter: Transition {
            XAnimator {
                from: stackView.width
                to: 0
                duration: AppThemes.screenTransistionDuration
                easing.type: Easing.InOutQuad
            }
        }

        popExit: Transition {
            XAnimator {
                from: 0
                to: stackView.width
                duration: AppThemes.screenTransistionDuration
                easing.type: Easing.InOutQuad
            }
        }
    }

    DIconAnimButton {
        width: AppThemes.primaryButtonSize
        height: width
        anchors.top: parent.top
        anchors.topMargin: parent.height * 0.06
        anchors.right: parent.right
        anchors.rightMargin: AppThemes.primarySpacing
        source1: AppThemes.setIconSource("settingsIcon.png")
        source2: AppThemes.setIconSource("closeIcon.png")

        onClicked: {
            if(buttonEnabled) {
                stackView.push(AppThemes.setFileSource("SettingsScreen.qml"))
            } else {
                stackView.pop()
            }

        }
    }

}
