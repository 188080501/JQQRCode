QT       += core

TEMPLATE = app

include( $$PWD/../../sharedlibrary/JQLibrary/JQLibrary.pri )

SOURCES += \
    $$PWD/cpp/main.cpp

RESOURCES += \
    $$PWD/resources/images/images.qrc
