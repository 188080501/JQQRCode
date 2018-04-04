import QtQuick 2.7
import QtMultimedia 5.4
import QtQuick.Controls 1.4
import QtQuick.Window 2.2
import JQQRCodeReader 1.0

Window {
    id: window
    width: ( ( Qt.platform.os === "ios" ) ? ( Screen.width ) : ( 320 ) )
    height: ( ( Qt.platform.os === "ios" ) ? ( Screen.height ) : ( 568 ) )
    visible: true
    color: "#ffffff"
    title: "QRCodeReaderForQml"

    minimumWidth: 320
    minimumHeight: 480

    function refresh() {
        if ( Qt.platform.os === "ios" ) { return; }

        var width = this.width;
        var height = this.height - ( ( Qt.platform.os === "ios" ) ? ( Screen.height - Screen.desktopAvailableHeight ) : ( 0 ) );
        var nativeProportion = 640 / 960;
        var currentProportion = width / height;
        var scale;

        if( nativeProportion > currentProportion )
        {
            scale = width / 640;
        }
        else
        {
            scale = height / 960;
        }

        if( scale < 0.8 )
        {
            scale = scale + ( 1.0 - 0.8 );
            mainItem.x = 0;
            mainItem.y = 0;
            mainItem.width = width / scale;
            mainItem.height = height / scale;
            mainItem.scale = scale;
        }
        else if( scale > 1.5 )
        {
            scale = scale - ( 1.5 - 1.0 );
            mainItem.x = -1;
            mainItem.y = -1;
            mainItem.width = width / scale + 2;
            mainItem.height = height / scale + 2;
            mainItem.scale = scale;
        }
        else
        {
            mainItem.x = 0;
            mainItem.y = 0;
            mainItem.width = width;
            mainItem.height = height;
            mainItem.scale = 1.0;
        }
    }

    onWidthChanged: refresh();
    onHeightChanged: refresh();

    Component.onCompleted: {
        if ( Qt.platform.os === "ios" )
        {
            this.showNormal();
        }
    }

    Item {
        id: mainItem
        z: 1
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: ( ( Qt.platform.os === "ios" ) ? ( ( Screen.height - Screen.desktopAvailableHeight ) / 2 ) : ( 0 ) )
        width: parent.width
        height: parent.height - ( ( Qt.platform.os === "ios" ) ? ( Screen.height - Screen.desktopAvailableHeight ) : ( 0 ) )

        MouseArea {
            anchors.fill: parent

            onClicked: {
                qrCodeReader.active = true;
            }
        }

        Text {
            id: infoLabel
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            width: parent.width
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
            text: "单击任意地方开始扫描" + ( ( result === "" ) ? ( "" ) : ( "\n\n扫描结果：" + result ) )

            property string result: ""
        }

        JQQRCodeReader {
            id: qrCodeReader

            onTagFound: {
                infoLabel.result = tag;
            }
        }
    }
}
