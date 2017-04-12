QT       += core qml quick concurrent multimedia

TEMPLATE = app

include( $$PWD/../../sharedlibrary/JQLibrary/JQLibrary.pri )

SOURCES += \
    $$PWD/cpp/main.cpp

RESOURCES += \
    $$PWD/qml/qml.qrc
