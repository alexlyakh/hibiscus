import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import QtQuick.Window 2.1
import QtQuick.Controls.Styles 1.1

Rectangle {
    id: tile
    color: "transparent"
    height: 100
    width: 182

    property string title: "Title"
    property string textLine1: "Text Line 1"
    property string textLine2: "Text Line 2"
    property string imageSource

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

            ColumnLayout {
                id: tileContentColumnLayout
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.right: parent.right
                spacing: 0

                Text {
                    id: tileHeading
                    color: "#ffffff"
                    text: title
                    horizontalAlignment: Text.AlignLeft
                    font.family: "Seurce Sans Pro"
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
                    color: "#ffffff"
                    text: textLine1
                    horizontalAlignment: Text.AlignLeft
                    font.family: "Seurce Sans Pro"
                    font.pointSize: 9
                    Layout.alignment: Qt.AlignTop
                    wrapMode: Text.WordWrap
                    renderType: Text.NativeRendering
                    smooth: true
                    verticalAlignment: Qt.AlignTop
                }

                Text {
                    id: tileContentLine2
                    color: "#ffffff"
                    text: textLine2
                    horizontalAlignment: Text.AlignLeft
                    font.family: "Seurce Sans Pro"
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
