import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import QtQuick.Window 2.1
import QtQuick.Controls.Styles 1.1

FocusScope {
    anchors.fill: parent

    Rectangle {
        id: advancedSettingsRoot
        activeFocusOnTab: true
        color: "transparent"
        anchors.fill: parent
        smooth: true

        RowLayout {
            id: advancedSettingsRowLayout
            anchors.fill: parent

            Rectangle {
                id: sidebar
                color: "#02b4e2"
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.bottom: parent.bottom
                width: 240

                ColumnLayout {
                    id: sidebarColumnLayout
                    anchors.fill: parent
                    spacing: 0

                    Rectangle {
                        id: headerRectangle
                        color: "#01caff"
                        height: 60
                        Layout.alignment: Qt.AlignTop
                        Layout.fillHeight: false
                        Layout.fillWidth: true
                        visible: false

                        Text {
                            id: sidebarHeading
                            anchors.alignWhenCentered: true
                            color: "#ffffff"
                            text: qsTr("Back")
                            x: 30
                            height: parent.height
                            horizontalAlignment: Text.AlignHCenter
                            font.family: "Source Sans Pro"
                            font.pointSize: 16
                            font.weight: Font.DemiBold
                            wrapMode: Text.WordWrap
                            renderType: Text.NativeRendering
                            smooth: true
                            verticalAlignment: Text.AlignVCenter
                        }
                    }

                    Rectangle {
                        id: subHeaderRectangle
                        color: "#00bdf1"
                        height: 60
                        Layout.fillHeight: false
                        Layout.fillWidth: true
                        visible: false
                    }

                    Rectangle {
                        id: listRectangle
                        color: "#02b4e2"
                        Layout.fillHeight: true
                        Layout.fillWidth: true

                        ListView {
                            id: listViewRoot
                            x: 30
                            anchors.fill: parent
                            anchors.topMargin: 0
                            antialiasing: true
                            snapMode: ListView.SnapOneItem
                            orientation: ListView.Vertical
                            spacing: 60
                            focus: true
                            model: ListModel {
                                ListElement {
                                    name: qsTr("Protection")
                                    index: 0
                                }

                                ListElement {
                                    name: qsTr("Updates")
                                    index: 1
                                }

                                ListElement {
                                    name: qsTr("Schedule")
                                    index: 2
                                }

                                ListElement {
                                    name: qsTr("Account")
                                    index: 3
                                }

                                ListElement {
                                    name: qsTr("Support")
                                    index: 4
                                }
                            }
                            delegate: Item {
                                Rectangle {
                                    activeFocusOnTab: true
                                    color: "transparent"
                                    height: itemRow.height
                                    width: listViewRoot.width

                                    Rectangle {
                                        id: mask
                                        anchors.fill: parent
                                        color: "#5299E7"
                                        opacity: 0.7
                                        radius: 4
                                        visible: false
                                    }

                                    states: [
                                        State {
                                           name: "Hover"
                                           when: mouseArea.containsMouse && !mouseArea.pressed

                                            PropertyChanges {
                                              target: mask;
                                              visible: true
                                            }
                                        },

                                        State {
                                           name: "Selected"
                                           when: listViewRoot.currentIndex == index && !mouseArea.pressed

                                            PropertyChanges {
                                              color: "#3498db"
                                              opacity: 1
                                              target: mask;
                                              visible: true
                                            }
                                        },

                                        State {
                                            name: "Focused"
                                            when: activeFocus
                                            PropertyChanges {
                                                target: mask;
                                                visible: true
                                                color: "red"
                                                opacity: 0.5
                                            }
                                        },

                                        State {
                                            name: "Pressed"
                                            when: mouseArea.pressed
                                            PropertyChanges {
                                                target: mask;
                                                visible: true
                                                color: "#5299E7"
                                                opacity: 1
                                            }
                                        }/*,

                                        State {
                                            name: "Default"
                                            when: activeFocus
                                            PropertyChanges {
                                                target: mask;
                                                visible: true
                                                color: "green"
                                                opacity: 0.5
                                            }
                                        },

                                        State {
                                            name: "Disabled"
                                            when: !enabled
                                            PropertyChanges {
                                                target: container;
                                                opacity: 0.5
                                            }
                                        }*/
                                    ]

                                    transitions: [
                                        Transition {
                                            NumberAnimation { target: mask; property: "opacity"; from: 0; to: 1; duration: 350; easing.type: Easing.InOutQuad }
                                        }

                                    ]

                                    Row {
                                        id: itemRow
                                        height: 60
                                        x: 30

                                        Text {
                                            id: protectionSettings
                                            antialiasing: true
                                            anchors.alignWhenCentered: true
                                            x: 30
                                            color: "#ffffff"
                                            text: name
                                            height: parent.height
                                            horizontalAlignment: Text.AlignLeft
                                            font.family: "Source Sans Pro"
                                            font.pointSize: 16
                                            wrapMode: Text.WordWrap
                                            renderType: Text.NativeRendering
                                            smooth: true
                                            verticalAlignment: Text.AlignVCenter
                                        }

                                        spacing: 10
                                    }

                                    MouseArea {
                                        id: mouseArea
                                        anchors.fill: parent
                                        hoverEnabled: true
                                        onClicked: {
                                            listViewRoot.currentIndex = index
                                            advancedContentTabView.currentIndex = index
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }

            Rectangle {
                id: contentPlaceholder
                color: "white"
                anchors.left:  sidebar.right
                anchors.top: parent.top
                anchors.right: parent.right
                anchors.bottom: parent.bottom

                TabView {
                    id: advancedContentTabView
                    anchors.fill: parent
                    frameVisible: false
                    tabsVisible: false
                    property Tab currentTab

                    Tab {
                        id: protectionTab
                        asynchronous: true
                        source: "qrc:///ProtectionSettings.qml"

                        Behavior on active {
                            ParallelAnimation {
                                loops:1
                                running: true
                                NumberAnimation { target: protectionTab; property: "opacity"; from: 1; to: 0; duration: 0; easing.type: Easing.InOutQuad }
                                NumberAnimation { target: protectionTab; property: "anchors.leftMargin"; from: 55; to: 00; duration: 320; easing.type: Easing.InOutQuad}
                                NumberAnimation { target: protectionTab; property: "opacity"; from: 0; to: 1; duration: 650; easing.type: Easing.InOutQuad }
                            }
                        }
                    }

                    Tab {
                        id: updatesTab
                        asynchronous: true
                        source: "qrc:///UpdateSettings.qml"

                        Behavior on active {
                            ParallelAnimation {
                                loops:1
                                running: true
                                NumberAnimation { target: updatesTab; property: "opacity"; from: 1; to: 0; duration: 0; easing.type: Easing.InOutQuad }
                                NumberAnimation { target: updatesTab; property: "anchors.leftMargin"; from: 55; to: 00; duration: 320; easing.type: Easing.InOutQuad}
                                NumberAnimation { target: updatesTab; property: "opacity"; from: 0; to: 1; duration: 650; easing.type: Easing.InOutQuad }
                            }
                        }
                    }

                    Tab {
                        id: scheduleTab
                        asynchronous: true
                        source: "qrc:///ScheduleSettings.qml"

                        Behavior on active {
                            ParallelAnimation {
                                loops:1
                                running: true
                                NumberAnimation { target: scheduleTab; property: "opacity"; from: 1; to: 0; duration: 0; easing.type: Easing.InOutQuad }
                                NumberAnimation { target: scheduleTab; property: "anchors.leftMargin"; from: 55; to: 00; duration: 320; easing.type: Easing.InOutQuad}
                                NumberAnimation { target: scheduleTab; property: "opacity"; from: 0; to: 1; duration: 650; easing.type: Easing.InOutQuad }
                            }
                        }
                    }

                    Tab {
                        id: accountTab
                        asynchronous: true
                        source: "qrc:///AccountSettings.qml"

                        Behavior on active {
                            ParallelAnimation {
                                loops:1
                                running: true
                                NumberAnimation { target: accountTab; property: "opacity"; from: 1; to: 0; duration: 0; easing.type: Easing.InOutQuad }
                                NumberAnimation { target: accountTab; property: "anchors.leftMargin"; from: 55; to: 00; duration: 320; easing.type: Easing.InOutQuad}
                                NumberAnimation { target: accountTab; property: "opacity"; from: 0; to: 1; duration: 650; easing.type: Easing.InOutQuad }
                            }
                        }
                    }

                    Tab {
                        id: supportTab
                        asynchronous: true
                        source: "qrc:///SupportSettings.qml"

                        Behavior on active {
                            ParallelAnimation {
                                loops:1
                                running: true
                                NumberAnimation { target: supportTab; property: "opacity"; from: 1; to: 0; duration: 0; easing.type: Easing.InOutQuad }
                                NumberAnimation { target: supportTab; property: "anchors.leftMargin"; from: 55; to: 00; duration: 320; easing.type: Easing.InOutQuad}
                                NumberAnimation { target: supportTab; property: "opacity"; from: 0; to: 1; duration: 650; easing.type: Easing.InOutQuad }
                            }
                        }
                    }
                }
            }
        }
    }
}
