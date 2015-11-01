import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import "qrc:/JasonQt_QRCodeReader/"

ApplicationWindow {
    id: applicationWindow1
    title: qsTr("JasonQt_QRCode Demo")
    width: 320
    height: 548
    visible: true

    JasonQt_QRCodeReader {
        id: qrcodeScan
        visible: false
        anchors.fill: parent

        onTagFind: {
            buttonScan.text = "Scan";
            qrcodeScan.visible = false;
            textEditQRCodeTag.text = tag;
        }
    }

    TextEdit {
        id: textEditQRCodeTag
        x: 14
        y: 20
        width: 293
        height: 95
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 20
        wrapMode: Text.WrapAnywhere
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }

    Button {
        id: buttonScan
        x: 102
        width: 116
        height: 49
        text: qsTr("Scan")
        anchors.horizontalCenterOffset: 0
        anchors.top: textEditQRCodeTag.bottom
        anchors.topMargin: 127
        anchors.horizontalCenter: parent.horizontalCenter

        onClicked: {
            if(text == "Scan")
            {
                text = "Stop";
                qrcodeScan.visible = true;
                qrcodeScan.startScan();
                textEditQRCodeTag.text = "";
            }
            else
            {
                text = "Scan";
                qrcodeScan.visible = false;
            }
        }
    }
}
