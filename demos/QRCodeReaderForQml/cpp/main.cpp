// Qt lib import
#include <QGuiApplication>
#include <QQmlApplicationEngine>

// JQLibrary lib improt
#include "JQQRCodeReaderForQml.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    JQQRCODEREADERFORQML_REGISTERTYPE( engine );

//    qmlRegisterType< TestClass >( "TestClass", 1, 0, "TestClass" );

    engine.load( QUrl( QStringLiteral( "qrc:/main.qml" ) ) );

    return app.exec();
}
