import QtQuick 2.4
import QtQuick.Controls 1.3
import QtMultimedia 5.4
import QZXing 2.3

Rectangle {
    id: jasonQt_QRCodeReader
    width: 320
    height: 548
    visible: true
    color: "#000000"
    z: (timer.running) ? (2) : (0)

    property alias prompt: labelForPrompt.text

    signal tagFind(string tag)

    function startScan() {
        timer.start();
    }

    onVisibleChanged: {
        if(visible)
        {
            camera.start();
        }
        else
        {
            timer.stop();
            camera.stop();
        }
    }

    Timer {
        id: timer
        interval: 300
        repeat: false
        onTriggered: {
            decoder.decodeImageQML(output)
        }
    }

    Camera {
        id: camera
        imageProcessing.whiteBalanceMode: CameraImageProcessing.WhiteBalanceAuto

        exposure {
            exposureCompensation: -1.0
            exposureMode: Camera.ExposurePortrait
        }
    }

    VideoOutput {
        id: output
        anchors.fill: parent;
        source: camera
        focus : visible // to receive focus and capture key events when visible
        autoOrientation: true
    }

    QZXing {
        id:decoder
        enabledDecoders: QZXing.DecoderFormat_QR_CODE
        onDecodingStarted: {
            console.log("QRCode scaning...");
        }

        onDecodingFinished: {
            if (succeeded) {
                console.log("QRCode scan done!");
            } else {
                console.log("QRCode scan fail.");
                timer.start();
            }
        }

        onTagFound: {
            tagFind(tag);
        }
    }

    Rectangle {
        width: parent.width
        height: (parent.height / 2) - 100
        color: "#55000000"
    }

    Rectangle {
        id: rectangle3
        y: (parent.height / 2) + 100
        width: parent.width
        height: (parent.height / 2) - 100
        color: "#55000000"
    }

    Rectangle {
        y: (parent.height / 2) - 100
        width: parent.width / 2 - 100
        height: 200
        color: "#55000000"
    }

    Rectangle {
        x: (parent.width / 2) + 100
        y: (parent.height / 2) - 100
        width: parent.width / 2 - 100
        height: 200
        color: "#55000000"
    }

    Rectangle {
        id: centralRectangle
        x: 53
        y: 87
        width: 200
        height: 200
        color: "#00000000"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        border.color: "#ffffff"

        Image {
            width: 20
            height: 20
            anchors.rightMargin: -5
            anchors.bottom: centralRectangle.top
            anchors.bottomMargin: -15
            anchors.right: centralRectangle.right
            source: "qrc:/JasonQt_QRCodeReader/Frame.png"
        }

        Image {
            width: 20
            height: 20
            rotation: 90
            anchors.bottom: centralRectangle.bottom
            anchors.bottomMargin: -5
            anchors.right: centralRectangle.right
            anchors.rightMargin: -5
            source: "qrc:/JasonQt_QRCodeReader/Frame.png"
        }

        Image {
            width: 20
            height: 20
            rotation: 180
            anchors.bottom: centralRectangle.bottom
            anchors.bottomMargin: -5
            anchors.right: centralRectangle.left
            anchors.rightMargin: -15
            source: "qrc:/JasonQt_QRCodeReader/Frame.png"
        }

        Image {
            width: 20
            height: 20
            rotation: 270
            anchors.bottom: centralRectangle.top
            anchors.bottomMargin: -15
            anchors.right: centralRectangle.left
            anchors.rightMargin: -15
            source: "qrc:/JasonQt_QRCodeReader/Frame.png"
        }

        Image {
            id: imageLightNeedle
            width: 200
            height: 24
            source: "qrc:/JasonQt_QRCodeReader/LightNeedle.png"

            PropertyAnimation {
                target: imageLightNeedle;
                property: "y"
                from: 0
                to: 176
                duration: 4000
                loops: -1
                running: imageLightNeedle.visible
                easing.type: Easing.InOutCubic;
            }
        }
    }

    Text {
        id: labelForPrompt
        x: 60
        width: 200
        height: 30
        color: "#ffffff"
        text: qsTr("\u5C06\u53D6\u666F\u6846\u5BF9\u7740\u4E8C\u7EF4\u7801\uFF0C\u5373\u53EF\u81EA\u52A8\u626B\u63CF\u3002\n\u53CC\u51FB\u7A7A\u767D\u5904\u9000\u51FA\u626B\u63CF\u6A21\u5F0F\u3002")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.top: centralRectangle.bottom
        anchors.topMargin: 30
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 12
    }

    MouseArea {
        anchors.fill: parent

        onDoubleClicked: {
            jasonQt_QRCodeReader.visible = false;
        }
    }
}
