import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import QtQuick.Window 2.1
import QtQuick.Controls.Styles 1.1

//FocusScope {
    Rectangle {
        id: tile
        activeFocusOnTab: true
        antialiasing: true
        color: "transparent"
        height: 100
        smooth: true
        width: 182

        property alias title: tileHeading.text
        property alias textLine1: tileContentLine1.text
        property alias textLine2: tileContentLine2.text
        property alias imageSource: tileIcon.source

        RowLayout {
            id: tileLayout
            anchors.fill: parent
            spacing: 0

            Rectangle {
                id: iconRectangle
                color: "transparent"
                Layout.alignment: Qt.AlignTop
                height: 32
                width: 32
                smooth: true

                Image {
                    id: tileIcon
                    y: 0
                    anchors.fill: parent
                    asynchronous: false
                    fillMode: Image.PreserveAspectCrop
                    antialiasing: true
                    smooth: true
                    source: imageSource
                    visible: true
                }
            }

            Rectangle {
                id: contentRectangle
                color: "transparent"
                Layout.fillHeight: true
                Layout.fillWidth: true
                smooth: true

                ColumnLayout {
                    id: tileContentColumnLayout
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.right: parent.right
                    spacing: 0

                    Text {
                        id: tileHeading
                        color: "#ffffff"
                        antialiasing: true
                        text: title
                        horizontalAlignment: Text.AlignLeft
                        font.family: "Source Sans Pro"
                        font.pointSize: 11
                        font.weight: Font.DemiBold
                        Layout.alignment: Qt.AlignTop
                        wrapMode: Text.WordWrap
                        renderType: Text.NativeRendering
                        smooth: true
                        verticalAlignment: Qt.AlignTop
                    }

                    Text {
                        id: tileContentLine1
                        antialiasing: true
                        color: "#ffffff"
                        text: textLine1
                        horizontalAlignment: Text.AlignLeft
                        font.family: "Source Sans Pro"
                        font.pointSize: 9
                        Layout.alignment: Qt.AlignTop
                        wrapMode: Text.WordWrap
                        renderType: Text.NativeRendering
                        smooth: true
                        verticalAlignment: Qt.AlignTop
                    }

                    Text {
                        id: tileContentLine2
                        antialiasing: true
                        color: "#ffffff"
                        text: textLine2
                        horizontalAlignment: Text.AlignLeft
                        font.family: "Source Sans Pro"
                        font.pointSize: 9
                        Layout.alignment: Qt.AlignTop
                        wrapMode: Text.WordWrap
                        renderType: Text.NativeRendering
                        smooth: true
                        verticalAlignment: Qt.AlignTop
                    }
                }
            }
        }
    }
//}
