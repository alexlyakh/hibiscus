import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import QtQuick.Window 2.1
import QtQuick.Controls.Styles 1.1

Rectangle {
    id: root
    color: "transparent"
    clip: false
    anchors.fill: parent

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

    Rectangle {
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
                        text: "Good day, and"
                        horizontalAlignment: Text.AlignHCenter
                        font.family: "Seurce Sans Pro"
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
                        text: "Welcome to Hibuscus!"
                        horizontalAlignment: Text.AlignHCenter
                        font.family: "Seurce Sans Pro"
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
                        text: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat."
                        horizontalAlignment: Text.AlignHCenter
                        font.family: "Seurce Sans Pro"
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
                        id: quickScanButton
                        height: 40
                        text: "Quick"
                        width: 140
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
                    }

                    FlatButton {
                        id: fullScanButton
                        height: 40
                        text: "Full"
                        width: 140
                        Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
                    }

                    FlatButton {
                        id: customScanButton
                        height: 40
                        text: "Custom"
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
                        title: "1500+"
                        textLine1: "threats blocked"
                        textLine2: "in last two weeks"
                    }

                    InfoTile {
                        id: totalBadUrlsBlocked
                        imageSource: "assets/images/Lock-Earth.png"
                        title: "500+"
                        textLine1: "bad sites blocked"
                        textLine2: "in last two weeks"
                    }

                    InfoTile {
                        id: lastScan
                        imageSource: "assets/images/Previous.png"
                        title: "1 day"
                        textLine1: "since last"
                        textLine2: "scheduled scan"
                    }

                    InfoTile {
                        id: nextScan
                        imageSource: "assets/images/Navigation-Right.png"
                        title: "6 hours"
                        textLine1: "till next"
                        textLine2: "scheduled scan"
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
