#
#   This file is part of JQLibrary
#
#   Library introduce: https://github.com/188080501/JQLibrary
#
#   Copyright: Jason
#
#   Contact email: Jason@JasonServer.com
#
#   GitHub: https://github.com/188080501/
#

QT += core

TEMPLATE = app

#JQQRCODEWRITER_COMPILE_MODE = SRC
include( $$PWD/../../sharedlibrary/JQLibrary/JQLibrary.pri )

SOURCES += \
    $$PWD/cpp/main.cpp

RESOURCES += \
    $$PWD/resources/images/images.qrc
