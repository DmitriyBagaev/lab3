import QtQuick 2.5

Rectangle {
    id: target
    width: 64
    height: 64
    radius: 50
    color: "#ff0000"

    Rectangle {
        width: 40
        height: 40
        radius: 30
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        color: "#ffffff"
    }

    Rectangle {
        width: 16
        height: 16
        radius: 30
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        color: "#ff0000"
    }
}

