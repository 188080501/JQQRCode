// Qt lib import
#include <QCoreApplication>
#include <QDebug>
#include <QImage>

// JQLibrary lib improt
#include "JQQRCodeReader.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    const QImage testImage( ":/images/test.png" );

    JQQRCodeReader qrCodeReader;

    qDebug() << "decodeImage return:" << qrCodeReader.decodeImage( testImage, JQQRCodeReader::DecodeQrCodeType );

//    const QImage testImage2( "/Users/jason/Desktop/IMG_6553.PNG" );
//    for ( auto currentType = 1; currentType <= 17; ++currentType )
//    {
//        qDebug() << "decodeImage return:" << currentType << ( 1 << currentType ) << qrCodeReader.decodeImage( testImage2, ( 1 << currentType ) );
//    }

    return 0;
}
