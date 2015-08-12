import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import QtQuick.Window 2.1
import QtQuick.Controls.Styles 1.1

Rectangle {
    id: root
    color: "white"//"transparent"
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
        visible: false
    }

    Rectangle {
        color: "white"//"#1E75E9"
        opacity: 0.8
        anchors.fill: parent
        visible: true
    }

    RowLayout {
        id: pageLayout
        anchors.fill: parent
        anchors.topMargin: 40
        anchors.bottomMargin: 40
        anchors.rightMargin: 40
        anchors.leftMargin: 40
        spacing: 40

        Rectangle {
            id: quickScanRectangle
            color: "#2c3e50"
            Layout.fillHeight: true
            Layout.fillWidth: true
            opacity: 0.8

            ColumnLayout {
                id: quickScanColumnLayout
                anchors.fill: parent
                spacing: 0

                Item {
                    id: quickScanTopPlaceholder
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                }

                Item {
                    id: quickScanItem
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    ColumnLayout {
                        id: quickScanUIColumnLayout
                        anchors.fill: parent
                        spacing: 16


                        Image {
                            id: quickScanImage
                            y: 0
                            asynchronous: false
                            fillMode: Image.PreserveAspectCrop
                            antialiasing: true
                            Layout.alignment: Qt.AlignCenter
                            Layout.fillHeight: false
                            Layout.fillWidth: false
                            smooth: true
                            source: "assets/images/QuickScan.png"
                            visible: true
                            height: 96
                            sourceSize.height: 96
                            sourceSize.width: 96
                            width:96
                        }

                        Text {
                            id: quickScanHeaderText
                            color: "#FFFFFF"
                            font.family: "Source Sans Pro"
                            //font.capitalization: Font.AllUppercase
                            font.pointSize: 22
                            font.weight: Font.Light
                            horizontalAlignment: Text.AlignHCenter
                            Layout.fillWidth: true
                            text: "Quick"
                            renderType: Text.NativeRendering
                        }

                        FlatButton {
                            id: quickScanButton
                            Layout.alignment: Qt.AlignHCenter
                            text: "Scan Now"
                            y: 6
                        }

                        Item {
                            id: quickScanItemBottomPlaceholder
                            Layout.fillHeight: true
                            Layout.fillWidth: true
                        }
                    }
                }
            }
        }

        Rectangle {
            id: deepScanRectangle
            color: "#2c3e50"
            Layout.fillHeight: true
            Layout.fillWidth: true
            opacity: 0.5

            ColumnLayout {
                id: fullScanColumnLayout
                anchors.fill: parent
                spacing: 0

                Item {
                    id: fullScanTopPlaceholder
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                }

                Item {
                    id: fullScanItem
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    ColumnLayout {
                        id: fullScanUIColumnLayout
                        anchors.fill: parent
                        spacing: 16


                        Image {
                            id: fullScanImage
                            y: 0
                            asynchronous: false
                            fillMode: Image.PreserveAspectCrop
                            antialiasing: true
                            Layout.alignment: Qt.AlignCenter
                            Layout.fillHeight: false
                            Layout.fillWidth: false
                            smooth: true
                            source: "assets/images/DeepScan.png"
                            visible: true
                            height: 96
                            sourceSize.height: 96
                            sourceSize.width: 96
                            width:96
                        }

                        Text {
                            id: fullScanHeaderText
                            color: "#FFFFFF"
                            font.family: "Source Sans Pro"
                            //font.capitalization: Font.AllUppercase
                            font.pointSize: 22
                            font.weight: Font.Light
                            horizontalAlignment: Text.AlignHCenter
                            Layout.fillWidth: true
                            text: "Full"
                            renderType: Text.NativeRendering
                        }

                        FlatButton {
                            id: fullScanButton
                            Layout.alignment: Qt.AlignHCenter
                            text: "Scan Now"
                            y: 6
                        }

                        Item {
                            id: fullScanItemBottomPlaceholder
                            Layout.fillHeight: true
                            Layout.fillWidth: true
                        }
                    }
                }
            }
        }

        Rectangle {
            id: customScanRectangle
            color: "#34495e"
            Layout.fillHeight: true
            Layout.fillWidth: true
            opacity: 0.5

            ColumnLayout {
                id: customScanColumnLayout
                anchors.fill: parent

                Item {
                    id: customScanTopPlaceholder
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                }

                Item {
                    id: customScanItem
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    ColumnLayout {
                        id: customScanUIColumnLayout
                        anchors.fill: parent
                        spacing: 16


                        Image {
                            id: customScanImage
                            y: 0
                            asynchronous: false
                            fillMode: Image.PreserveAspectCrop
                            antialiasing: true
                            Layout.alignment: Qt.AlignCenter
                            Layout.fillHeight: false
                            Layout.fillWidth: false
                            smooth: true
                            source: "assets/images/CustomScan.png"
                            visible: true
                            height: 96
                            sourceSize.height: 96
                            sourceSize.width: 96
                            width:96
                        }

                        Text {
                            id: customScanHeaderText
                            color: "#FFFFFF"
                            font.family: "Source Sans Pro"
                            //font.capitalization: Font.AllUppercase
                            font.pointSize: 22
                            font.weight: Font.Light
                            horizontalAlignment: Text.AlignHCenter
                            Layout.fillWidth: true
                            text: "Custom"
                            renderType: Text.NativeRendering
                        }

                        FlatButton {
                            id: customScanButton
                            Layout.alignment: Qt.AlignHCenter
                            text: "Scan Now"
                            y: 6
                        }

                        Item {
                            id: customScanItemBottomPlaceholder
                            Layout.fillHeight: true
                            Layout.fillWidth: true
                        }
                    }
                }
            }
        }

        Rectangle {
            id: advancedRectangle
            color: "#7f8c8d"//"#3498db"
            Layout.fillHeight: true
            Layout.fillWidth: true
            opacity: 0.5

            ColumnLayout {
                id: advancedColumnLayout
                anchors.fill: parent

                Item {
                    id: advancedTopPlaceholder
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                }

                Item {
                    id: advancedItem
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    ColumnLayout {
                        id: advancedUIColumnLayout
                        anchors.fill: parent
                        spacing: 16


                        Image {
                            id: advancedImage
                            y: 0
                            asynchronous: false
                            fillMode: Image.PreserveAspectCrop
                            antialiasing: true
                            Layout.alignment: Qt.AlignCenter
                            Layout.fillHeight: false
                            Layout.fillWidth: false
                            smooth: true
                            source: "assets/images/Setting.png"
                            visible: true
                            height: 96
                            sourceSize.height: 96
                            sourceSize.width: 96
                            width:96
                        }

                        Text {
                            id: advancedHeaderText
                            color: "#FFFFFF"
                            font.family: "Source Sans Pro"
                            //font.capitalization: Font.AllUppercase
                            font.pointSize: 22
                            font.weight: Font.Light
                            horizontalAlignment: Text.AlignHCenter
                            Layout.fillWidth: true
                            text: "Settings"
                            renderType: Text.NativeRendering
                        }

                        FlatButton {
                            id: advancedButton
                            Layout.alignment: Qt.AlignHCenter
                            text: "Review"
                            y: 6
                        }

                        Item {
                            id: advancedItemBottomPlaceholder
                            Layout.fillHeight: true
                            Layout.fillWidth: true
                        }
                    }
                }
            }
        }
    }
}
