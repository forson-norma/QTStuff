import QtQuick
import QtQuick.Window

Window {
  width: 640
  height: 480
  visible: true
  title: qsTr("Hello World")

  Text {
    anchors.centerIn: parent
    text: qsTr("Hey there!")
  }
}
