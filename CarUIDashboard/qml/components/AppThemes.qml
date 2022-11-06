pragma Singleton

import QtQuick 2.12
import QtQuick.Window 2.12

Item {
    id: root

    property string fontFamilyType: fontType.name

    property string screenColor: "#1B1F2D"
    property string primaryButtonColor: "#2E3542"
    property string primaryClickedColor: "#2880F3"
    property string transparentColor: "transparent"
    property string whiteColor: "white"
    property string activeFocusBorderColor: "#FBAF3E"
    property string activeTextColor:"#FBAF3E"
    property string settingsOptionsBackground: "#1A1E2C"
    property string settingsBackground: "#202734"
    property string dividerColor: "#343B48"
    property string settingsOptionsListBackgroundColor: "#2F3643"

    property real screenMargin: 16
    property real primaryPadding: 32
    property real primarySpacing: 16
    property real primaryIconSize: 24
    property real primaryButtonSize: 48
    property real largeButtonSize: 64
    property real primaryRadius: 12
    property real primaryFontSize: 16
    property real largeFontSize: 32
    property real largeIconSize: 32
    property real smallIconSize: 12
    property real smallFontSize: 12
    property real topBarIconSize: 16
    property real primaryScale: 1
    property real pressedScale: 1.4

    property int simpleAnimationDuration: 200
    property int screenTransistionDuration: 500
    property int activeBorderWidth: 3

    FontLoader {
        id: fontType

        source: "../fonts/NexaBold.otf"
    }

    function setIconSource(source) {
        return "qrc:/qml/icons/" + source;
    }

    function setFileSource(source) {
        return "qrc:/qml/screenManager/" + source;
    }
}
