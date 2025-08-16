import QtQuick 2.15
import QtQuick.Window 2.15
Window {
    visible: true
    width: 400
    height: 300
    title: "Hello Qt"
    Rectangle {
        anchors.fill: parent
        color: "lightblue"
        Text {
            anchors.centerIn: parent
            text: "Hello GitHub Actions with CMake!"
            font.pointSize: 20
        }
    }
}
