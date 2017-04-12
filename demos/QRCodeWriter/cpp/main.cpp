// Qt lib import
#include <QCoreApplication>
#include <QDebug>
#include <QStandardPaths>

// JQLibrary lib improt
#include "JQQRCodeWriter.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    const auto &&qrCodeImage = JQQRCodeWriter::makeQRcode( "QRCodeWriter" );
    qDebug() << qrCodeImage;

    if ( qrCodeImage.isNull() )
    {
        return -1;
    }

    qrCodeImage.save( QString( "%1/test.png" ).arg( QStandardPaths::writableLocation( QStandardPaths::DesktopLocation ) ), "PNG" );

    return 0;
}
