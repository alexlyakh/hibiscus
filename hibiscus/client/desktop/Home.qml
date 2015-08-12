import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import QtQuick.Window 2.1
import QtQuick.Controls.Styles 1.1

FocusScope {
    anchors.fill: parent

    Rectangle {
        id: root
        antialiasing: true
        color: "transparent"
        clip: false
        anchors.fill: parent
        smooth: true

    Image {
        id: watermark
        y: 0
        asynchronous: false
        fillMode: Image.PreserveAspectCrop
        anchors.fill: parent
        antialiasing: true
        Layout.column: 0
        Layout.fillHeight: true
        Layout.fillWidth: true
        smooth: true
        source: "assets/images/background.png"
        visible: true
    }

    // Mask
    Rectangle {
        id: mask
        color: "transparent" //"#1E75E9"
        opacity: 0.8
        anchors.fill: parent
        visible: true
    }

    ColumnLayout {
        id: homePageLayout
        anchors.fill: parent
        spacing: 0

        Rectangle {
            id: topArea
            color: "transparent"
            Layout.fillWidth: true
            Layout.fillHeight: true

            ColumnLayout {
                id: topAreaColumnLayout
                anchors.fill: parent
                spacing: 0

                Rectangle {
                    color: "transparent"
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    RowLayout {
                        id: topRowLayout
                        anchors.fill: parent
                        anchors.rightMargin: 82
                        anchors.topMargin: 0
                        spacing: 0

                        HyperlinkButton {
                            id: advancedButton
                            height: 40
                            text: qsTr("Advanced")
                            width: 120
                            Layout.alignment: Qt.AlignRight //| Qt.AlignTop

                            onClicked: {
                                mainTabViewRoot.currentIndex = 1;
                            }
                        }
                    }
                }

                Rectangle {
                    color: "transparent"
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                }

                Rectangle {
                    color: "transparent"
                    Layout.fillHeight: false
                    Layout.fillWidth: true
                    height: bottomHeading.height + 6

                    Text {
                        id: bottomHeading
                        anchors.alignWhenCentered: true
                        anchors.centerIn: parent
                        color: "#ffffff"
                        text: qsTr("Good day, and")
                        horizontalAlignment: Text.AlignHCenter
                        font.family: "Source Sans Pro"
                        font.pointSize: 9
                        wrapMode: Text.WordWrap
                        renderType: Text.NativeRendering
                        smooth: true
                        verticalAlignment: Qt.AlignVCenter
                        width: scanButtonsRowLayout.width
                    }
                }
            }
        }

        Rectangle {
            id: middleArea
            color: "transparent"
            Layout.fillWidth: true
            Layout.fillHeight: true

            ColumnLayout {
                id: middleAreaColumnLayout
                anchors.fill: parent
                spacing: 16

                Rectangle {
                    color: "transparent"
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    Text {
                        id: heading
                        anchors.alignWhenCentered: true
                        anchors.centerIn: parent
                        color: "#ffffff"
                        text: qsTr("Welcome to Hibuscus!")
                        horizontalAlignment: Text.AlignHCenter
                        font.family: "Source Sans Pro"
                        font.pointSize: 22
                        wrapMode: Text.WordWrap
                        renderType: Text.NativeRendering
                        smooth: true
                        verticalAlignment: Qt.AlignVCenter
                        width: scanButtonsRowLayout.width
                    }
                }

                Rectangle {
                    color: "transparent"
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    Text {
                        id: actionDescription
                        anchors.alignWhenCentered: true
                        anchors.centerIn: parent
                        color: "#ffffff"
                        text: qsTr("Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.")
                        horizontalAlignment: Text.AlignHCenter
                        font.family: "Source Sans Pro"
                        font.pointSize: 9
                        wrapMode: Text.WordWrap
                        renderType: Text.NativeRendering
                        smooth: true
                        verticalAlignment: Qt.AlignVCenter
                        width: scanButtonsRowLayout.width
                    }
                }

                RowLayout {
                    id: scanButtonsRowLayout
                    Layout.fillHeight: false
                    Layout.fillWidth: false
                    Layout.alignment: Qt.AlignHCenter
                    spacing: 30

                    FlatButton {
                        id: fullScanButton
                        height: 40
                        text: qsTr("Full")
                        width: 140
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
                    }

                    FlatButton {
                        id: quickScanButton
                        focus: true
                        height: 40
                        text: qsTr("Quick")
                        width: 140
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
                    }

                    FlatButton {
                        id: customScanButton
                        height: 40
                        text: qsTr("Custom")
                        width: 140
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
                    }
                }
            }
        }

        Rectangle {
            id: bottomAreadFillerRectangle
            color: "transparent"
            Layout.fillHeight: false
            Layout.fillWidth: true
            height: 0
        }

        Rectangle {
            id: bottomArea
            color: "transparent"
            Layout.fillWidth: true
            Layout.fillHeight: true

            ColumnLayout {
                id: bottomColumnLayout
                anchors.fill: parent
                spacing: 0

                Rectangle {
                    id: topFillerRectangle
                    color: "transparent"
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                }

                Rectangle {
                    id: topFillerRectangle2
                    color: "transparent"
                    Layout.fillHeight: false
                    Layout.fillWidth: true
                    height: 82
                }

                RowLayout {
                    id: bottomAreaRowLayout
                    Layout.fillHeight: true
                    Layout.fillWidth: false
                    Layout.alignment: Qt.AlignHCenter
                    spacing: 40

                    InfoTile {
                        id: totalThreatsBlocked
                        imageSource: "assets/images/CPU.png"
                        title: qsTr("1500+")
                        textLine1: qsTr("threats blocked")
                        textLine2: qsTr("in last two weeks")
                    }

                    InfoTile {
                        id: totalBadUrlsBlocked
                        imageSource: "assets/images/Lock-Earth.png"
                        title: "500+"
                        textLine1: qsTr("bad sites blocked")
                        textLine2: qsTr("in last two weeks")
                    }

                    InfoTile {
                        id: lastScan
                        imageSource: "assets/images/Previous.png"
                        title: "1 day"
                        textLine1: qsTr("since last")
                        textLine2: qsTr("scheduled scan")
                    }

                    InfoTile {
                        id: nextScan
                        imageSource: "assets/images/Navigation-Right.png"
                        title: qsTr("6 hours")
                        textLine1: qsTr("till next")
                        textLine2: qsTr("scheduled scan")
                    }
                }

                Rectangle {
                    id: bottomFillerRectangle
                    color: "transparent"
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                }
            }
        }
    }
}
}
