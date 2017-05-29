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

TEMPLATE = lib

CONFIG += staticlib

CONFIG( debug, debug | release ) {
    TARGET = JQQRCodeWriterd
}

CONFIG( release, debug | release ) {
    TARGET = JQQRCodeWriter
}

JQQRCODEWRITER_COMPILE_MODE = SRC
include( $$PWD/../../sharedlibrary/JQLibrary/JQQRCodeWriter.pri )

DESTDIR = $$JQQRCODEWRITER_BIN_DIR
