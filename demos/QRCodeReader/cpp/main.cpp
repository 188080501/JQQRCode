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

    qDebug() << "decodeImage return:" << qrCodeReader.decodeImage( testImage );

    return 0;
}
