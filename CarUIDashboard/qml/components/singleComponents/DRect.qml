import QtQuick 2.12

Rectangle {
    id: root

    property bool pressed: msArea.pressed

    signal clicked();

    activeFocusOnTab: true

    Keys.onPressed: (event)=> {
                        if (event.key === Qt.Key_Return) {
                            root.onClicked()
                        }
                    }

    MouseArea {
        id: msArea

        anchors.fill: parent

        onClicked: {
            root.onClicked()
        }
    }

    function onClicked() {
        root.clicked();
    }
}
