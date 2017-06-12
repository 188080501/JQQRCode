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

#JQQRCODEREADER_COMPILE_MODE = SRC
include( $$PWD/../../sharedlibrary/JQLibrary/JQLibrary.pri )
include( $$PWD/../../sharedlibrary/JQLibrary/JQQRCodeWriter.pri )

SOURCES += \
    $$PWD/cpp/main.cpp
