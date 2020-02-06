import QtQuick 2.9
import QtQuick.Controls 2.2

ApplicationWindow {
    id: app
    visible: true
    width: 200
    height: 200
    title: qsTr("Hello World")

    property bool changeColor

    Rectangle {
        anchors.fill: parent
        color: changeColor ? "blue" : "black"
    }

    Hardkey {
        width: 70
        height: 50
        anchors.centerIn: parent
        label: "Color"
        onPressed: changeColor = !changeColor
    }
}
