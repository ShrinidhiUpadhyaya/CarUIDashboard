pragma Singleton

import QtQuick 2.12
import QtQuick.Window 2.12

Item {
    id: root

    readonly property real dpi: Screen.pixelDensity*25.4

    property string screenColor: "#1B1F2D"
    property string primaryButtonColor: "#2E3542"
    property string primaryClickedColor: "#2880F3"

    property string fontFamilyType: fontType.name

    FontLoader {
        id: fontType

        source: "../fonts/NexaBold.otf"
    }

    function setSize(x) {
        return x*(dpi/80)
    }
}
