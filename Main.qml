import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow   {

    visible: true
    width: 1280
    height: 720
    title: "Day3App"

    function changeRectangleColor(newColor) {
                                rectangle1.color = newColor;
                            }

    GridLayout{
        columns: 4
        anchors.centerIn: parent

        Rectangle   {
            id: rectangle1
            color: "red"
            width: 100
            height: 100
            border.color: "white"
            border.width: 2

            Text {
                anchors.centerIn: parent
                text: "Click Me!"
                color: "white"
            }

            Menu    {
                id: contextMenu1

                MenuItem    {
                    text: "Change to Blue"
                    onClicked: changeRectangleColor("blue")
                }

                MenuItem    {
                    text: "Change to Orange"
                    onClicked: changeRectangleColor("orange")
                }

                MenuItem    {
                    text: "Change to Default"
                    onClicked: changeRectangleColor("red")
                }
            }

            MouseArea   {
                anchors.fill: parent
                onClicked: contextMenu1.popup()
            }
        }

        Rectangle   {
            id: rectangle2
            color: "yellow"
            width: 100
            height: slider1.value
            border.color: "white"
            border.width: 2
            anchors.centerIn: parent

            Slider {
                id: slider1
                anchors {
                    centerIn: parent
                    top: parent.top
                    bottom: parent.bottom
                }
                anchors.centerIn: parent
                width: parent.width
                from: 50
                to: 700
                stepSize: 1
                value: 100
            }
        }

        Rectangle   {
            id: rectangle3
            color: "blue"
            width: 100
            height: 100
            border.color: "white"
            border.width: 2
            anchors.centerIn: parent

            CheckBox {
                id: checkBox1
                anchors.centerIn: parent
                text: "Make Circle"
                checked: false

                onClicked: {
                    if (checked) {
                        rectangle3.radius = width / 2
                    } else {
                        rectangle3.radius = 0
                    }
                }
            }
        }
    }
}
