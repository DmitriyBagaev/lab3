import QtQuick 2.5
import QtQuick.Window 2.2
import QtQml 2.2


Rectangle {
    width: 700
    height: 790
    color: "white"
    anchors.top: parent.top
    anchors.topMargin: 5
    anchors.horizontalCenter: parent.horizontalCenter
    border.color: "black"
    border.width: 2
    id: field;

    Target {
        id: target
           x: Math.floor(Math.random() * (parent.width - target.width))
           y: Math.floor(Math.random() * (parent.height - target.width))

           MouseArea {
               id: hits_number
               anchors.fill: parent
               property int hits : 0
               onClicked: {
                   hits ++;
                   console.log(hits);
                   target.x = Math.floor(Math.random() * (field.width - target.width))
                   target.y = Math.floor(Math.random() * (field.height - target.height))
               }
           }
        }

    Item {
        property int time: 30
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.top
        anchors.bottomMargin: -30

        Text {
            text : "Очки: " + hits_number.hits

            anchors.left: parent.left
            anchors.leftMargin: -200
            font.pointSize: 24
        }

        Text {
            id: clock
            text: "Время: " + parent.time + " сек."
            anchors.right: parent.right
            anchors.rightMargin: -200
            font.pointSize: 24
        }

        Timer {
            running: parent.time > 0
            repeat: true
            interval: 1000
            onTriggered: parent.time--
        }


        Text {
            id: result
            font.pointSize: 50
            visible: false
            anchors.verticalCenterOffset: 350
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }

        onTimeChanged: {
            if (time === 0) {
                result.visible = true
                result.text = "Ваш счёт: " + hits_number.hits
            }
        }

    }



}
