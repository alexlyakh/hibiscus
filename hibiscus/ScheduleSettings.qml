import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import QtQuick.Window 2.1
import QtQuick.Controls.Styles 1.1

Rectangle {
    id: scheduleSettingsRoot
    color: "transparent"
    anchors.fill: parent

    ColumnLayout {
        id: scheduleSettingsColumnLayout
        anchors.fill: parent
        spacing: 0

        Rectangle {
            id: scheduleSettingsHeaderRectangle
            color: "#ffffff"
            height: 60
            Layout.alignment: Qt.AlignTop
            Layout.fillHeight: false
            Layout.fillWidth: true
            visible: false
        }

        Rectangle {
            id: scheduleSettingsSubHeaderRectangle
            color: "#c9c8d0"
            height: 60
            Layout.fillHeight: false
            Layout.fillWidth: true

            Text {
                id: scheduleSettings
                anchors.alignWhenCentered: true
                x: 30
                color: "#726f80"
                text: "Schedule"
                height: parent.height
                horizontalAlignment: Text.AlignLeft
                font.family: "Seurce Sans Pro"
                font.pointSize: 16
                wrapMode: Text.WordWrap
                renderType: Text.NativeRendering
                smooth: true
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: scheduleSettingsContentRectangle
            color: "#f3f2f7"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
