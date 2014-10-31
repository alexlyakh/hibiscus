import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import QtQuick.Window 2.1
import QtQuick.Controls.Styles 1.1

Rectangle {
    id: advancedSettingsRoot
    color: "transparent"
    anchors.fill: parent

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
                        text: "Back"
                        x: 30
                        height: parent.height
                        horizontalAlignment: Text.AlignHCenter
                        font.family: "Seurce Sans Pro"
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

                        //highlight: Rectangle { color: "yellow" }
                          //       preferredHighlightBegin: 125; preferredHighlightEnd: 125
                            //     highlightRangeMode: ListView.

                        spacing: 60
                        focus: true
                        model: ListModel {
                            ListElement {
                                name: "Protection"
                                index: 0
                            }

                            ListElement {
                                name: "Updates"
                                index: 1
                            }

                            ListElement {
                                name: "Schedule"
                                index: 2
                            }

                            ListElement {
                                name: "Account"
                                index: 3
                            }

                            ListElement {
                                name: "Support"
                                index: 4
                            }
                        }
                        delegate: Item {
                            Rectangle {
                                color: /*mouseArea.containsMouse ||*/ listViewRoot.currentIndex == index ? /*"#5299E7"*/"#3498db" : "transparent"
                                height: itemRow.height
                                opacity: 0.9
                                width: listViewRoot.width

                                Row {
                                    id: itemRow
                                    height: 60
                                    x: 30

                                    Text {
                                        id: protectionSettings
                                        anchors.alignWhenCentered: true
                                        x: 30
                                        color: "#ffffff"
                                        text: name
                                        height: parent.height
                                        horizontalAlignment: Text.AlignLeft
                                        font.family: "Seurce Sans Pro"
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
