import QtQuick 2.7
import QtGraphicalEffects 1.0
import QtMultimedia 5.4
import JQQRCodeReader 1.0

Loader {
    id: jqQRCodeReader
    width: parent.width
    height: parent.height
    asynchronous: false
    active: false

    property int decodeQrCodeType: 4096 // 二维码
//    property int decodeQrCodeType: 32 // 一维码

    property bool autoTurnOnFlash: false

    signal tagFound( string tag )

    onVisibleChanged: {
        if ( !visible )
        {
            jqQRCodeReader.active = false;
        }
    }

    sourceComponent: Component {

        Rectangle {
            id: rectangleForView
            width: jqQRCodeReader.width
            height: jqQRCodeReader.height
            visible: true
            color: "#000000"

            Component.onCompleted: {
                JQQRCodeReaderForQmlManage.decodeQrCodeType = jqQRCodeReader.decodeQrCodeType;
            }

            Connections {
                target: JQQRCodeReaderForQmlManage

                onTagFound: {
                    if ( !timer.running ) { return; }

                    rectangleForView.visible = false;
                    animationForLightNeedle.running = false;
                    timer.running = false;
                    camera.stop();

                    jqQRCodeReader.tagFound( tag );

                    timerForClose.running = true;
                }
            }

            MouseArea {
                anchors.fill: parent

                onDoubleClicked: {
                    timerForClose.running = true;
                }
            }

            Timer {
                id: timer
                interval: 100
                repeat: true
                running: true

                onTriggered: {
                    JQQRCodeReaderForQmlManage.analysisItem( desaturate );
                    JQQRCodeReaderForQmlManage.analysisItem( videoOutput );
                }
            }

            Camera {
                id: camera

                focus {
                    focusMode: Camera.FocusContinuous
                }

                flash {
                    id: flash

                    onFlashReady: {
                        if ( flash.ready )
                        {
                            mouseAreaForFlashControl.visible = true;

                            if ( jqQRCodeReader.autoTurnOnFlash )
                            {
                                flash.mode = Camera.FlashVideoLight;
                                mouseAreaForFlashControl.openFlash = true;
                            }
                        }
                    }
                }
            }

            VideoOutput {
                id: videoOutput
                anchors.fill: parent
                source: camera
                focus : visible
                autoOrientation: true
                fillMode: VideoOutput.PreserveAspectCrop
            }

            BrightnessContrast {
                id: brightnessContrast
                anchors.fill: videoOutput
                source: videoOutput
                contrast: 0.3
                brightness: 0.4
                visible: false
            }

            Desaturate {
                id: desaturate
                anchors.fill: videoOutput
                source: brightnessContrast
                desaturation: 1.0
                visible: false
            }

            Rectangle {
                width: parent.width
                height: ( parent.height / 2 ) - 100
                color: "#55000000"
            }

            Rectangle {
                id: rectangle3
                y: ( parent.height / 2 ) + 100
                width: parent.width
                height: ( parent.height / 2 ) - 100
                color: "#55000000"
            }

            Rectangle {
                y: ( parent.height / 2 ) - 100
                width: ( parent.width / 2 ) - 100
                height: 200
                color: "#55000000"
            }

            Rectangle {
                x: ( parent.width / 2 ) + 100
                y: ( parent.height / 2 ) - 100
                width: ( parent.width / 2 ) - 100
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
                        id: animationForLightNeedle
                        target: imageLightNeedle
                        property: "y"
                        from: 0
                        to: 176
                        duration: 4000
                        loops: -1
                        running: true
                        easing.type: Easing.InOutCubic
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
                anchors.topMargin: 20
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 12
            }

            MouseArea {
                id: mouseAreaForFlashControl
                anchors.top: centralRectangle.bottom
                anchors.topMargin: 40
                anchors.horizontalCenter: parent.horizontalCenter
                width: 100
                height: 100
                visible: false

                property bool openFlash: false

                onClicked: {
                    openFlash = !openFlash;
                    flash.mode = ( openFlash ) ? ( Camera.FlashVideoLight ) : ( Camera.FlashOff );
                }

                Image {
                    anchors.centerIn: parent
                    source: ( mouseAreaForFlashControl.openFlash ) ?
                                ( "qrc:/JQQRCodeReader/JQQRCodeReader/FlashOn.png" ) :
                                ( "qrc:/JQQRCodeReader/JQQRCodeReader/FlashOff.png" )
                }
            }
        }
    }

    Timer {
        id: timerForClose
        interval: 200
        running: false
        repeat: false

        onTriggered: {
            jqQRCodeReader.active = false;
        }
    }
}
