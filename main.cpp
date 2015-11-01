// Qt lib import
#include <QApplication>
#include <QQmlApplicationEngine>
#include <QStandardPaths>

// JasonQt lib import
#include "JasonQt_QRCodeReader.h"
#include "JasonQt_QRCodeWriter.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    // Begin QZXing
    QZXing::registerQMLTypes();

    QQmlApplicationEngine engine;
    engine.load(QUrl("qrc:/main.qml"));

    JasonQt_QRCodeWriter::makeQRcode("This is a QRcode").save(QStandardPaths::writableLocation(QStandardPaths::DesktopLocation) + "/test.png", "PNG");

    return app.exec();
}
