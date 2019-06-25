import QtQuick 2.6
import QtQuick.Window 2.2

Window {
    visible: true
    width: 1000
    height: 480
    title: qsTr("Hello World")


    //元素填充它的父元素
    GreenSquare{

        BlueSquare{
            anchors.fill: parent
            anchors.margins:  10
            text: "(1)"
        }
    }
    //元素左对齐它的父元素
    GreenSquare{
        x:210
        BlueSquare{

            anchors.left: parent.left
            anchors.leftMargin: 0
            text: "(2)"
        }
    }
    //元素左边与父元素的右边对齐

    GreenSquare{
        x:420
        BlueSquare{

            anchors.left: parent.right
            anchors.leftMargin: 0
            text: "(3)"
        }
    }
    //元素中间对齐。Blue1与它的父元素水平中间对齐。Blue2与Blue1中间对齐，
    //   并且它的顶部对齐Blue1的底部。
    GreenSquare{

        x:800
        BlueSquare{
            id:blue1
            width: 48
            height: 24
            y:8
            anchors.horizontalCenter: parent.horizontalCenter
        }
        BlueSquare{
            id:blue2
            width: 96
            height: 50
            y:40
            text: "(4)"
            anchors.top: blue1.bottom
            anchors.topMargin: 8
            anchors.horizontalCenter: blue1.horizontalCenter
        }

    }
    //元素居中
    GreenSquare{

        y:240
        BlueSquare{
            width: 100
            anchors.centerIn: parent
            text: "(5)"
        }
    }
//元素水平方向居中对齐父元素并向后偏移12像素，垂直方向居中对齐。
    GreenSquare{
        x:420
        y:240
        BlueSquare{
            text: "(6)"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -20
            anchors.verticalCenter: parent.verticalCenter

        }

    }


}
