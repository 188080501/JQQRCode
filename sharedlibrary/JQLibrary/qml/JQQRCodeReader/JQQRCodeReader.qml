import QtQuick 2.7
import QtMultimedia 5.4
import JQQRCodeReader 1.0
import ImagePreviewView 1.0

Loader {
    id: jqQRCodeReader
    width: parent.width
    height: parent.height
    asynchronous: false
    active: false

    property int decodeQrCodeType: 4096 // 二维码
//    property int decodeQrCodeType: 32 // 一维码

    property bool autoTurnOnFlash: false
    property bool disableWhenTagFound: true

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
            layer.enabled: true

            Component.onCompleted: {
                JQQRCodeReaderForQmlManage.decodeQrCodeType = jqQRCodeReader.decodeQrCodeType;
            }

            Connections {
                target: JQQRCodeReaderForQmlManage

                onTagFound: {
                    if ( !timerForAnalysisLoop.running ) { return; }

                    if ( jqQRCodeReader.disableWhenTagFound )
                    {
                        rectangleForView.visible = false;
                        animationForLightNeedle.running = false;
                        timerForAnalysisLoop.running = false;
                        camera.stop();

                        jqQRCodeReader.tagFound( tag );

                        timerForClose.running = true;
                    }
                    else
                    {
                        jqQRCodeReader.tagFound( tag );
                    }
                }
            }

            MouseArea {
                anchors.fill: parent

                onDoubleClicked: {
                    timerForClose.running = true;
                }
            }

            Timer {
                id: timerForAnalysisLoop
                interval: 100
                repeat: true
                running: true

                onTriggered: {
                    JQQRCodeReaderForQmlManage.analysisItem(
                                videoOutput,
                                centralRectangle.x - videoOutput.x,
                                centralRectangle.y - videoOutput.y,
                                centralRectangle.width,
                                centralRectangle.height
                            );
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
                        if ( flash.ready && jqQRCodeReader.autoTurnOnFlash )
                        {
                            flash.mode = Camera.FlashVideoLight;
                            mouseAreaForFlashControl.openFlash = true;
                        }
                    }
                }
            }

            VideoOutput {
                id: videoOutput
                anchors.centerIn: parent
                width: Math.max( Math.min( camera.viewfinder.resolution.width, camera.viewfinder.resolution.height ), 1024 )
                height: width
                objectName: "VideoOutput"
                source: camera
                focus : visible
                autoOrientation: true
                fillMode: VideoOutput.PreserveAspectCrop
                scale: {
                    if ( ( width / height ) > ( parent.width / parent.height ) )
                    {
                        return parent.height / height;
                    }
                    else
                    {
                        return parent.width / width;
                    }
                }
            }

//            ImagePreviewView {
//                anchors.centerIn: parent
//                scale: videoOutput.scale
//                opacity: 0.7
//                width: 1
//                height: 1
//            }

            Rectangle {
                id: centralRectangle
                anchors.centerIn: parent
                width: Math.min( parent.width, parent.height ) / scale * 0.5
                height: width
                color: "#00000000"
                border.color: "#ffffff"
                border.width: 1 / centralRectangle.scale
                scale: videoOutput.scale

                Rectangle {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: parent.top
                    width: jqQRCodeReader.width / centralRectangle.scale
                    height: ( jqQRCodeReader.height / centralRectangle.scale - centralRectangle.height ) / 2
                    color: "#55000000"
                }

                Rectangle {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.bottom
                    width: jqQRCodeReader.width / centralRectangle.scale
                    height: ( jqQRCodeReader.height / centralRectangle.scale - centralRectangle.height ) / 2
                    color: "#55000000"
                }

                Rectangle {
                    anchors.right: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    width: ( jqQRCodeReader.width / centralRectangle.scale - centralRectangle.width ) / 2
                    height: parent.height
                    color: "#55000000"
                }

                Rectangle {
                    anchors.left: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    width: ( jqQRCodeReader.width / centralRectangle.scale - centralRectangle.width ) / 2
                    height: parent.height
                    color: "#55000000"
                }

                Image {
                    anchors.horizontalCenter: centralRectangle.right
                    anchors.verticalCenter: centralRectangle.top
                    source: "qrc:/JQQRCodeReader/JQQRCodeReader/Frame.png"
                    scale: 1 / centralRectangle.scale
                    asynchronous: false
                    cache: true
                }

                Image {
                    rotation: 90
                    anchors.horizontalCenter: centralRectangle.right
                    anchors.verticalCenter: centralRectangle.bottom
                    source: "qrc:/JQQRCodeReader/JQQRCodeReader/Frame.png"
                    scale: 1 / centralRectangle.scale
                    asynchronous: false
                    cache: true
                }

                Image {
                    rotation: 180
                    anchors.horizontalCenter: centralRectangle.left
                    anchors.verticalCenter: centralRectangle.bottom
                    source: "qrc:/JQQRCodeReader/JQQRCodeReader/Frame.png"
                    scale: 1 / centralRectangle.scale
                    asynchronous: false
                    cache: true
                }

                Image {
                    rotation: 270
                    anchors.horizontalCenter: centralRectangle.left
                    anchors.verticalCenter: centralRectangle.top
                    source: "qrc:/JQQRCodeReader/JQQRCodeReader/Frame.png"
                    scale: 1 / centralRectangle.scale
                    asynchronous: false
                    cache: true
                }

                Image {
                    id: imageLightNeedle
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: 200
                    height: 24
                    source: "qrc:/JQQRCodeReader/JQQRCodeReader/LightNeedle.png"
                    scale: 1 / centralRectangle.scale

                    YAnimator {
                        id: animationForLightNeedle
                        target: imageLightNeedle
                        from: 0
                        to: centralRectangle.height - 25
                        duration: 4000
                        easing.type: Easing.InOutCubic
                        running: true

                        onStopped: {
                            start();
                        }
                    }
                }
            }

            Text {
                id: labelForPrompt
                anchors.top: centralRectangle.bottom
                anchors.topMargin: -30
                anchors.horizontalCenter: parent.horizontalCenter
                width: 200
                height: 30
                color: "#ffffff"
                text: "将取景框对着二维码，即可自动扫描。\n双击空白处退出扫描模式"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 12
            }

            MouseArea {
                id: mouseAreaForFlashControl
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: centralRectangle.bottom
                anchors.topMargin: 40
                width: 100
                height: 100
                visible: flash.ready

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

            MouseArea {
                id: mouseArea2
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                width: 50
                height: 50

                property int clickedCount: 0

                onClicked: {
                    ++clickedCount;
                    timerForResetClickedCount.running = true;

                    if ( clickedCount > 10 )
                    {
                        clickedCount = 0;
                        levelAdjust.visible = !levelAdjust.visible;
                    }
                }

                Timer {
                    id: timerForResetClickedCount
                    interval: 4000
                    repeat: false
                    running: true

                    onTriggered: {
                        mouseArea2.clickedCount = 0;
                    }
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
