import QtQuick

//import QtQuick.Window
Window {
  id: root

  width: 640
  height: 480
  visible: true
  title: qsTr("Hello World")

  Rectangle {

    id: button1
    property color baseColor: "red"

    anchors {
      bottom: parent.verticalCenter
      horizontalCenter: parent.horizontalCenter
      bottomMargin: 20
    }

    width: 150
    height: 50

    color: if (buttonMouseArea1.containsPress) {
             return Qt.darker(baseColor)
           } else if (buttonMouseArea1.containsMouse) {
             return Qt.lighter(baseColor)
           } else {
             return baseColor
           }

    Text {
      id: buttonText1
      anchors.centerIn: parent

      text: "Click Me!!!!!!!!!!"
    }

    MouseArea {
      id: buttonMouseArea1

      anchors.fill: parent //to have the mouse area fill the whole rectangle since it's parent is the rectangle
      hoverEnabled: true // we want entire mouse area to be hoverable

      onClicked: {
        button1.baseColor = "orange"
      }
    }
  }

  Rectangle {

    property color baseColor: "#00FF00"

    anchors {
      top: parent.verticalCenter
      horizontalCenter: parent.horizontalCenter
      topMargin: 20
    }

    width: 150
    height: 50

    color: if (buttonMouseArea2.containsPress) {
             return Qt.darker(baseColor)
           } else if (buttonMouseArea2.containsMouse) {
             return Qt.lighter(baseColor)
           } else {
             return baseColor
           }

    Text {
      id: buttonText2
      anchors.centerIn: parent

      text: "Close App"
    }

    MouseArea {
      id: buttonMouseArea2

      anchors.fill: parent //to have the mouse area fill the whole rectangle since it's parent is the rectangle
      hoverEnabled: true // we want entire mouse area to be hoverable

      onClicked: {
        Qt.quit()
      }

      Connections {
        target: buttonMouseArea2

        function onClicked() {
          console.log("Button2 clicked, quitting App")
        }
      }
    }
  }
}
