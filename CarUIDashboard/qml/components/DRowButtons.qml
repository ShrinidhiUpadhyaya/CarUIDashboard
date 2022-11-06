    import QtQuick 2.12
    import QtQuick.Layouts 1.12
    import QtGraphicalEffects 1.12

    Rectangle {
        id: root

        property alias model: repeater.model

        property int currentIndex: 0

        color: AppThemes.primaryButtonColor
        radius: AppThemes.primaryRadius

        Rectangle {
            id: mask

            anchors.fill: parent
            radius: AppThemes.primaryRadius
            visible: false
        }

        OpacityMask {
            anchors.fill: parent
            source: buttonLayout
            maskSource: mask
        }

        RowLayout {
            id: buttonLayout

            anchors.fill: parent
            spacing: 0
            opacity: 0

            Repeater {
                id: repeater

                Rectangle {
                    id: buttonRect

                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    color: AppThemes.primaryButtonColor
                    radius: AppThemes.primaryRadius

                    Behavior on color {
                        ColorAnimation {
                            duration: AppThemes.simpleAnimationDuration
                        }
                    }

                    Loader {
                        anchors.fill: parent
                        sourceComponent: model.component
                    }

                    MouseArea {
                        anchors.fill: parent

                        onClicked: {
                            root.currentIndex = index
                        }
                    }
                }
            }
        }
    }
