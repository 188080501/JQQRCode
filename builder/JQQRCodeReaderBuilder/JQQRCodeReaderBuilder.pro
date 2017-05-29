#
#   This file is part of JQLibrary
#
#   Library introduce: https://github.com/188080501/JQQRCodeReader
#
#   Copyright: Jason
#
#   Contact email: Jason@JasonServer.com
#
#   GitHub: https://github.com/188080501/
#

QT += core

TEMPLATE = lib

CONFIG += staticlib

CONFIG( debug, debug | release ) {
    TARGET = JQQRCodeReaderd
}

CONFIG( release, debug | release ) {
    TARGET = JQQRCodeReader
}

JQQRCODEREADER_COMPILE_MODE = SRC
include( $$PWD/../../sharedlibrary/JQLibrary/JQQRCodeReader.pri )

DESTDIR = $$JQQRCODEREADER_BIN_DIR
