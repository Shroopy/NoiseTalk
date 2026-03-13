import QtQuick
import QtQuick.Controls
import QtQuick.Window

Window {
    id: mainWindow
    width: 200
    height: 100
    visible: true
    title: "Hello, World!"

    minimumWidth: exitButton.implicitWidth + 20
    minimumHeight: exitButton.implicitHeight + 20

    Button {
        id: exitButton
        text: "Exit"
		palette.buttonText: "black"
        anchors.fill: parent

        onClicked: {
            mainWindow.close()
        }
    }
}