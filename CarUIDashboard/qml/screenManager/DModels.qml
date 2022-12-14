pragma Singleton

import QtQuick 2.12
import QtQuick.Controls 2.5

Item {
    id: root

    property alias bottomNavigationIconList: bottomNavigationIconList
    property alias settingsIconList: settingsIconList
    property alias quickControlsLightList: quickControlsLightList
    property alias quickControlsInteriorLightList: quickControlsInteriorLightList
    property alias quickControlsSteeringWheelList: quickControlsSteeringWheelList
    property alias quickControlsFogModelList: quickControlsFogModelList
    property alias mapZoomButtons: mapZoomButtons
    property alias mapNavDataModelList: mapNavDataModelList

    ListModel {
        id: bottomNavigationIconList

        ListElement {
            source: "qrc:/qml/icons/bottomNavCarIcon.png"
            selectedSource: "qrc:/qml/icons/bottomNavCarSelectedIcon.png"
        }

        ListElement {
            source: "qrc:/qml/icons/bottomNavApplicationsIcon.png"
            selectedSource: "qrc:/qml/icons/bottomNavApplicationsSelectedIcon.png"
        }

        ListElement {
            source: "qrc:/qml/icons/bottomNavLocationIcon.png"
            selectedSource: "qrc:/qml/icons/bottomNavLocationSelectedIcon.png"
        }

        ListElement {
            source: "qrc:/qml/icons/bottomNavMobileIcon.png"
            selectedSource: "qrc:/qml/icons/bottomNavMobileSelectedIcon.png"
        }

        ListElement {
            source: "qrc:/qml/icons/bottomNavMusicIcon.png"
            selectedSource: "qrc:/qml/icons/bottomNavMusicSelectedIcon.png"
        }
    }

    ListModel {
        id: settingsIconList

        ListElement {
            source: "qrc:/qml/icons/settingsIcon/quickControlsIcon.png"
            text: qsTr("Quick Controls")
        }
        ListElement {
            source: "qrc:/qml/icons/settingsIcon/lightsIcon.png"
            text: qsTr("Lights")
        }
        ListElement {
            source: "qrc:/qml/icons/settingsIcon/drivingIcon.png"
            text: qsTr("Driving")
        }
        ListElement {
            source: "qrc:/qml/icons/settingsIcon/autopilotIcon.png"
            text: qsTr("Autopilot")
        }
        ListElement {
            source: "qrc:/qml/icons/settingsIcon/safetySecurityIcon.png"
            text: qsTr("Safety & Security")
        }
        ListElement {
            source: "qrc:/qml/icons/settingsIcon/displayIcon.png"
            text: qsTr("Display")
        }
        ListElement {
            source: "qrc:/qml/icons/settingsIcon/serviceIcon.png"
            text: qsTr("Service")
        }
        ListElement {
            source: "qrc:/qml/icons/settingsIcon/bluetoothIcon.png"
            text: qsTr("Bluetooth")
        }
        ListElement {
            source: "qrc:/qml/icons/settingsIcon/userAccountIcon.png"
            text: qsTr("User Account")
        }
    }

    ListModel {
        id: quickControlsLightList

        ListElement {
            text: qsTr("Off")
        }
        ListElement {
            text: qsTr("Parking")
        }
        ListElement {
            text: qsTr("On")
        }
        ListElement {
            text: qsTr("Auto")
        }
    }

    ListModel {
        id: quickControlsInteriorLightList

        ListElement {
            text:"Off"
        }
        ListElement {
            text:"Soft"
        }
        ListElement {
            text:"Auto"
        }
    }

    ListModel {
        id: quickControlsSteeringWheelList

        ListElement {
            text:"Comfort"
        }
        ListElement {
            text:"Standard"
        }
        ListElement {
            text:"Sport"
        }
    }

    ListModel {
        id: quickControlsFogModelList

        ListElement {
            text: "Front Fog"
            source:"qrc:/qml/icons/carLight.png"
        }

        ListElement {
            text: "Back Fog"
            source:"qrc:/qml/icons/carLightReverseIcon.png"
        }
    }

    ListModel {
        id: mapZoomButtons

        ListElement {
            text:"+"
        }

        ListElement {
            text:"-"
        }
    }

    ListModel {
        id: mapNavDataModelList

        ListElement {
            source: "qrc:/qml/icons/mapNavigationIcon.png"
            text1: "distance"
            text2: "3.5 KM"
        }

        ListElement {
            source: "qrc:/qml/icons/mapNavigationSandTimerIcon.png"
            text1: "time left"
            text2: "12 Min"
        }

        ListElement {
            source: "qrc:/qml/icons/mapNavigationClockIcon.png"
            text1: "arrival time"
            text2: "09:52 PM"
        }
    }
}
