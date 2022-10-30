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


    ListModel {
        id: bottomNavigationIconList

        ListElement {
            source:"qrc:/qml/icons/bottomNavCarIcon.png"
            selectedSource:"qrc:/qml/icons/bottomNavCarSelectedIcon.png"
        }

        ListElement {
            source:"qrc:/qml/icons/bottomNavApplicationsIcon.png"
            selectedSource:"qrc:/qml/icons/bottomNavApplicationsSelectedIcon.png"
        }

        ListElement {
            source:"qrc:/qml/icons/bottomNavLocationIcon.png"
            selectedSource:"qrc:/qml/icons/bottomNavLocationSelectedIcon.png"
        }

        ListElement {
            source:"qrc:/qml/icons/bottomNavMobileIcon.png"
            selectedSource:"qrc:/qml/icons/bottomNavMobileSelectedIcon.png"
        }

        ListElement {
            source:"qrc:/qml/icons/bottomNavMusicIcon.png"
            selectedSource:"qrc:/qml/icons/bottomNavMusicSelectedIcon.png"
        }
    }

    ListModel {
        id: settingsIconList

        ListElement {
            source:"qrc:/qml/icons/settingsIcon/quickControlsIcon.png"
            text: "Quick Controls"
        }
        ListElement {
            source:"qrc:/qml/icons/settingsIcon/lightsIcon.png"
            text: "Lights"
        }
        ListElement {
            source:"qrc:/qml/icons/settingsIcon/drivingIcon.png"
            text: "Driving"
        }
        ListElement {
            source:"qrc:/qml/icons/settingsIcon/autopilotIcon.png"
            text: "Autopilot"
        }
        ListElement {
            source:"qrc:/qml/icons/settingsIcon/safetySecurityIcon.png"
            text: "Safety & Security"
        }
        ListElement {
            source:"qrc:/qml/icons/settingsIcon/displayIcon.png"
            text: "Display"
        }
        ListElement {
            source:"qrc:/qml/icons/settingsIcon/serviceIcon.png"
            text: "Service"
        }
        ListElement {
            source:"qrc:/qml/icons/settingsIcon/bluetoothIcon.png"
            text: "Bluetooth"
        }
        ListElement {
            source:"qrc:/qml/icons/settingsIcon/userAccountIcon.png"
            text: "User Account"
        }
    }

    ListModel {
        id: quickControlsLightList

        ListElement {
            text:"Off"
        }
        ListElement {
            text:"Parking"
        }
        ListElement {
            text:"On"
        }
        ListElement {
            text:"Auto"
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
}
