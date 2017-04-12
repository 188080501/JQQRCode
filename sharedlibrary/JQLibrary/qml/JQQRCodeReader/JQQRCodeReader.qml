import QtQuick 2.7
import QtMultimedia 5.4
import JQQRCodeReader 1.0

Loader {
    id: jqQRCodeReader
    width: parent.width
    height: parent.height
    asynchronous: false
    active: false

    onVisibleChanged: {
        if ( !visible )
        {
            jqQRCodeReader.active = false;
        }
    }

    sourceComponent: Component {

        Rectangle {
            id: jasonQt_QRCodeReader
            width: jqQRCodeReader.width
            height: jqQRCodeReader.height
            visible: true
            color: "#000000"

            signal tagFind(string tag)

            JQQRCodeReaderForQmlManage {
                id: jqQRCodeReaderForQmlManage

                onTagFound: {
                    timer.running = false;
                    jqQRCodeReader.tagFound( tag );
                    jqQRCodeReader.active = false;
                }
            }

            MouseArea {
                anchors.fill: parent

                onDoubleClicked: {
                    jqQRCodeReader.active = false;
                }
            }

            Timer {
                id: timer
                interval: 200
                repeat: true
                running: true

                onTriggered: {
                    jqQRCodeReaderForQmlManage.analysisItem( output )
                }
            }

            Camera {
                id: camera

                focus {
                    focusMode: Camera.FocusContinuous
                }
            }

            VideoOutput {
                id: output
                anchors.fill: parent
                source: camera
                focus : visible
                autoOrientation: true
                fillMode: PreserveAspectCrop
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
                    source: "qrc:/JQQRCodeReader/JQQRCodeReader/Frame.png"
                }

                Image {
                    width: 20
                    height: 20
                    rotation: 90
                    anchors.bottom: centralRectangle.bottom
                    anchors.bottomMargin: -5
                    anchors.right: centralRectangle.right
                    anchors.rightMargin: -5
                    source: "qrc:/JQQRCodeReader/JQQRCodeReader/Frame.png"
                }

                Image {
                    width: 20
                    height: 20
                    rotation: 180
                    anchors.bottom: centralRectangle.bottom
                    anchors.bottomMargin: -5
                    anchors.right: centralRectangle.left
                    anchors.rightMargin: -15
                    source: "qrc:/JQQRCodeReader/JQQRCodeReader/Frame.png"
                }

                Image {
                    width: 20
                    height: 20
                    rotation: 270
                    anchors.bottom: centralRectangle.top
                    anchors.bottomMargin: -15
                    anchors.right: centralRectangle.left
                    anchors.rightMargin: -15
                    source: "qrc:/JQQRCodeReader/JQQRCodeReader/Frame.png"
                }

                Image {
                    id: imageLightNeedle
                    width: 200
                    height: 24
                    source: "qrc:/JQQRCodeReader/JQQRCodeReader/LightNeedle.png"

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
                text: "将取景框对着二维码，即可自动扫描。\n双击空白处退出扫描模式"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.top: centralRectangle.bottom
                anchors.topMargin: 30
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 12
            }
        }
    }

    signal tagFound( string tag )
}
