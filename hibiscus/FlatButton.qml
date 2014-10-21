import QtQuick 2.2

Rectangle  {
    id: container
    color: "transparent"
    border.color: "white"
    opacity: 1
    border.width: 2
    radius: 4

    property string text: "Button"

    signal clicked

    width: 96
    height: 25
    smooth: true

    MouseArea  {
        id: mouseArea
        anchors.fill: parent
        onClicked: container.clicked();
    }

    Text  {
        id: buttonLabel
        anchors.centerIn: container
        anchors.verticalCenter: container.verticalCenter
        color: "#ffffff"
        font.pointSize: 10
        font.family: "Seurce Sans Pro"
        text: container.text
        verticalAlignment: Text.AlignVCenter
        renderType: Text.NativeRendering
        font.weight: Font.DemiBold
        height: container.height
        smooth: true
    }
}
