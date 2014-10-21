import QtQuick 2.2
import QtQuick.Window 2.1
import QtQuick.Layouts 1.0

Window {
    id: mainWindow
    visible: true
    width: 960
    height: 600
    title: "Hibiscus AntiVirus"
    //flags: Qt.FramelessWindowHint

    DesignerGrid {
        id: designerGrid
        anchors.fill: parent
        opacity: 0.3
    }

    ListView {
        id: mainTabViewRoot
        anchors.fill: parent
        keyNavigationWraps: true
        flickDeceleration: 1
        boundsBehavior: Flickable.StopAtBounds
        orientation: ListView.Horizontal
        flickableDirection: Flickable.HorizontalFlick
        highlightFollowsCurrentItem: true
        highlightMoveVelocity: 1500
        highlightRangeMode: ListView.StrictlyEnforceRange
        clip: false
        currentIndex: 0
        antialiasing: true
        focus: true
        interactive: true
        snapMode: ListView.SnapOneItem
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.row: 1

        model: ListModel {
            ListElement {
                name: "Home"
                index:0
            }
        }

        delegate: Rectangle {
            color: "transparent"
            width: mainTabViewRoot.width
            height: mainTabViewRoot.height

            Loader {
                anchors.fill: parent
                source: "qrc:///Home.qml"
            }
        }
    }
}
