import QtQuick 2.7
import QtMultimedia 5.4
import QtQuick.Controls 1.4
import QtQuick.Window 2.2
import JQQRCodeReader 1.0

Window {
    visible: true
    width: 320
    height: 480
    title: "QRCodeReaderForQml"

    Button {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: -40
        text: "点击这里开始扫描"

        onClicked: {
            qrCodeReader.active = true;
        }
    }

    Text {
        id: textForResult
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 40
        width: parent.width
        horizontalAlignment: Text.AlignHCenter
        wrapMode: Text.WordWrap
    }

    JQQRCodeReader {
        id: qrCodeReader

        onTagFound: {
            textForResult.text = tag;
        }
    }
}
