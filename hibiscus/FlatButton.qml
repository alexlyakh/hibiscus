import QtQuick 2.2

//FocusScope {

    Rectangle  {
        id: container
        antialiasing: true
        activeFocusOnTab: true
        color: mouseArea.containsMouse ? "white" : "transparent"
        border.color: "white"
        focus: true
        opacity: 1
        border.width: 2
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
            opacity: 0.4
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

        /*
        transitions: [
            Transition {
                PropertyAnimation {
                    target: container
                    properties: scale, opacity
                    duration: 250
                }
            }

        ]*/

        MouseArea  {
            id: mouseArea
            anchors.fill: parent
            hoverEnabled: true
            onClicked: container.clicked();
        }

        Text  {
            id: buttonLabel
            anchors.centerIn: container
            anchors.verticalCenter: container.verticalCenter
            antialiasing: true
            color: "#ffffff"
            font.pointSize: 10
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
