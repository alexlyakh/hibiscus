import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import QtQuick.Window 2.1
import QtQuick.Controls.Styles 1.1

FocusScope {
    Rectangle {
    id: updatesSettingsRoot
    antialiasing: true
    color: "transparent"
    anchors.fill: parent
    smooth: true

    ColumnLayout {
        id: updatesSettingsColumnLayout
        anchors.fill: parent
        spacing: 0

        Rectangle {
            id: updatesSettingsHeaderRectangle
            color: "#ffffff"
            height: 60
            Layout.alignment: Qt.AlignTop
            Layout.fillHeight: false
            Layout.fillWidth: true
            visible: false
        }

        Rectangle {
            id: updatesSettingsSubHeaderRectangle
            color: "#c9c8d0"
            height: 60
            Layout.fillHeight: false
            Layout.fillWidth: true

            Text {
                id: updatesSettings
                anchors.alignWhenCentered: true
                x: 30
                color: "#726f80"
                text: qsTr("Updates")
                height: parent.height
                horizontalAlignment: Text.AlignLeft
                font.family: "Source Sans Pro"
                font.pointSize: 16
                wrapMode: Text.WordWrap
                renderType: Text.NativeRendering
                smooth: true
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: updatesSettingsContentRectangle
            color: "#f3f2f7"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
}
