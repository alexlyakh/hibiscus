import QtQuick 2.2

/*FocusScope {
    property alias color: container.color
    property alias text: buttonLabel.text
    x: container.x; y: container.y
    width: container.width; height: container.height
    signal clicked*/


    Rectangle  {
        id: container
        antialiasing: true
        activeFocusOnTab: true
        color: "transparent"
        border.color: "white"
        focus: true
        opacity: 1
        border.width: 1.4
        radius: 4
        width: 96
        height: 25
        smooth: true
        property alias text: buttonLabel.text
        signal clicked

        Rectangle {
            id: mask
            anchors.fill: parent
            color: "green"
            opacity: 0.3
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

                PropertyChanges {
                   target: buttonLabel;
                   color: "white"
                   opacity: 1
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
                    color: "green"
                    opacity: 0.5
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
                to: "Hover"
                NumberAnimation { target: mask; property: "opacity"; from: 0; to: 0.3; duration: 30; easing.type: Easing.InOutQuad }
            },

            Transition {
                to: "Pressed"
                NumberAnimation { target: mask; property: "opacity"; from: 0; to: 0.5; duration: 30; easing.type: Easing.InOutQuad }
            }
        ]

        MouseArea  {
            id: mouseArea
            anchors.fill: parent
            hoverEnabled: true
            activeFocusOnTab: true
            onClicked: container.clicked();
        }

        Text  {
            id: buttonLabel
            anchors.centerIn: container
            anchors.verticalCenter: container.verticalCenter
            antialiasing: true
            color: "#ffffff"
            //focus: true
            font.pointSize: 14
            font.family: "Source Sans Pro"
            text: container.text
            verticalAlignment: Text.AlignVCenter
            renderType: Text.NativeRendering
            font.weight: Font.DemiBold
            height: container.height
            smooth: true
        }
    }
//}
