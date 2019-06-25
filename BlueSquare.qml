import QtQuick 2.0



    Rectangle{

        id:rec2
        width: 100
        height: 100
        color: "blue"
        property alias text: label.text
        Text {
            id: label
           anchors.centerIn: parent
           color: "red"
        }

        MouseArea{
            anchors.fill:parent
            drag.target: parent
        }
    }


