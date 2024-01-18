import QtQuick
import QtQuick.Layouts

Window {
  width: 640
  height: 480
  visible: true
  title: qsTr("Hello World")

  color: "lightyellow"

  GridLayout {
    anchors.fill: parent

    rows: 2
    columns: 2
    rowSpacing: 10
    columnSpacing: 10

    Item {
      Layout.fillWidth: true
      Layout.fillHeight: true //this says to fill the entire available space in layout

      Rectangle {
        width: 50
        height: 50
        color: "orange"

        x: 50
        y: 50
      }
    }

    Item {
      Layout.fillWidth: true
      Layout.fillHeight: true

      Rectangle {
        anchors.top: verticalCenter
        anchors.left: horizontalCenter

        //    or we can do:
        //      Rectangle{
        //      anchors{
        //        top:verticalCenter
        //        left:horizontalCenter
        //        }
        //      }
        width: 100
        height: 75
        color: "darkred"
      }
    }
    Item {
      Layout.fillWidth: true
      Layout.fillHeight: true

      Flow {
        anchors.fill: parent
        spacing: 20

        Repeater {
          model: 5

          Rectangle {
            width: 50
            height: 50
            color: "green"
          }
        }
      }
    }

    Item {
      Layout.fillWidth: true
      Layout.fillHeight: true

      GridLayout {
        anchors.fill: parent

        rows: 2
        columns: 2

        rowSpacing: 20
        columnSpacing: 20

        Rectangle {
          Layout.fillWidth: true
          Layout.fillHeight: true
          Layout.columnSpan: 2
          color: "magenta"
        }
      }
    }
  }
}
