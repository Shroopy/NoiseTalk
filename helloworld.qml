import QtQuick
import QtQuick.Controls
import QtQuick.Window
import QtQuick.Dialogs

Window {
    id: mainWindow
    width: 150
    height: 200
    visible: true
    title: "Hello, World!"

    minimumWidth: width
    minimumHeight: height

    // Button {
    //     id: exitButton
    //     anchors.top: parent.top
    //     text: "Exit"
	// 	palette.buttonText: "black"
    //     anchors.fill: parent

    //     onClicked: {
    //         mainWindow.close()
    //     }
    // }

    Text {
        id: text1
        // anchors.top: exitButton.bottom
        anchors.left: parent.left
        anchors.margins: 5
        text: "Audio input:"
    }
    ComboBox {
        id: choiceBox1
        anchors.top: text1.bottom
        anchors.left: parent.left
        anchors.margins: 5
    }

    Text {
        id:text2
        anchors.top: choiceBox1.bottom
        anchors.left: parent.left
        anchors.margins: 5
        text: "Virtual audio cable:"
    }
    ComboBox {
        id:choiceBox2
        anchors.top: text2.bottom
        anchors.left: parent.left
        anchors.margins: 5

    }

    Text {
        id: text3
        anchors.top: choiceBox2.bottom
        anchors.left: parent.left
        anchors.margins: 5
        text: "Audio file:"
    }
    TextField {
        id: fileTextField
        anchors.top: text3.bottom
        anchors.left: parent.left
        anchors.margins: 5

    }
    FileDialog {
        id: fileDialog
        // currentFolder: StandardPaths.standardLocations(StandardPaths.PicturesLocation)[0]
        // onAccepted: image.source = selectedFile
    }
    Button {
        id: fileButton
        anchors.top: fileTextField.top
        anchors.left: fileTextField.right
        width: 20
        // icon:
        onClicked: fileDialog.open()
    }
    
}