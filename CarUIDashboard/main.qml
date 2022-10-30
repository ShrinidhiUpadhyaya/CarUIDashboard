import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

import "qml/screenManager"
import "qml/components/singleComponents"



Window {
    visible: true
    width: 720
    height: 900
    title: qsTr("Hello World")


    Rectangle {
        anchors.fill: parent
        color: "#1B1F2D"
    }

    StackView {
        id: stackView

        anchors.fill: parent
        initialItem: "qrc:/qml/screenManager/HomeScreen.qml"

        pushEnter: Transition {
            XAnimator {
                from: stackView.width
                to: 0
                duration: 500
                easing.type: Easing.InOutQuad
            }
        }

        popExit: Transition {
            XAnimator {
                from: 0
                to: stackView.width
                duration: 500
                easing.type: Easing.InOutQuad
            }
        }
    }

    DIconAnimButton {
        width: 48
        height: 48
        anchors.top: parent.top
        anchors.topMargin: parent.height * 0.08
        anchors.right: parent.right
        anchors.rightMargin: parent.width * 0.04
        source1:"qrc:/qml/icons/settingsIcon.png"
        source2: "qrc:/qml/icons/closeIcon.png"

        onClicked: {
            if(buttonEnabled) {
                stackView.push("qrc:/qml/screenManager/SettingsScreen.qml")
            } else {
                stackView.pop()
            }

        }

        //        iconSize: 32
    }

}
