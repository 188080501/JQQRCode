#
#   This file is part of JasonQt
#
#   Copyright: Jason
#
#   Contact email: 188080501@qq.com
#
#   GNU Lesser General Public License Usage
#   Alternatively, this file may be used under the terms of the GNU Lesser
#   General Public License version 2.1 or version 3 as published by the Free
#   Software Foundation and appearing in the file LICENSE.LGPLv21 and
#   LICENSE.LGPLv3 included in the packaging of this file. Please review the
#   following information to ensure the GNU Lesser General Public License
#   requirements will be met: https://www.gnu.org/licenses/lgpl.html and
#   http://www.gnu.org/licenses/old-licenses/lgpl-2.1.html.
#

QT       += core gui

CONFIG += c++11

INCLUDEPATH += $$PWD/

exists($$PWD/JasonQt_Barcode.h) {
    SOURCES += $$PWD/JasonQt_Barcode.cpp
    HEADERS += $$PWD/JasonQt_Barcode.h
}

exists($$PWD/../Jason/Jdn.pri) {
    INCLUDEPATH += $$PWD/../Jason/
    include($$PWD/../Jason/Jdn.pri)
}

exists($$PWD/JasonQt_Container.h) {
    SOURCES += $$PWD/JasonQt_Container.cpp
    HEADERS += $$PWD/JasonQt_Container.h
}

contains( QT, sql ) {
    exists($$PWD/JasonQt_Database.h) {
        SOURCES += $$PWD/JasonQt_Database.cpp
        HEADERS += $$PWD/JasonQt_Database.h
    }
}

contains( QT, sql ) {
    exists($$PWD/JasonQt_DatabaseFactory.h) {
        SOURCES += $$PWD/JasonQt_DatabaseFactory.cpp
        HEADERS += $$PWD/JasonQt_DatabaseFactory.h
    }
}

exists($$PWD/JasonQt_Draw.h) {
    SOURCES += $$PWD/JasonQt_Draw.cpp
    HEADERS += $$PWD/JasonQt_Draw.h
}

exists($$PWD/JasonQt_Encrypt.h) {
    SOURCES += $$PWD/JasonQt_Encrypt.cpp
    HEADERS += $$PWD/JasonQt_Encrypt.h
}

exists($$PWD/JasonQt_File.h) {
    SOURCES += $$PWD/JasonQt_File.cpp
    HEADERS += $$PWD/JasonQt_File.h
}

exists($$PWD/JasonQt_Foundation.h) {
    SOURCES += $$PWD/JasonQt_Foundation.cpp
    HEADERS += $$PWD/JasonQt_Foundation.h
}

ios {
    exists($$PWD/JasonQt_iOS.h) {
        LIBS += -framework Foundation -framework UIKit
        OBJECTIVE_SOURCES += $$PWD/JasonQt_iOS.mm
        HEADERS += $$PWD/JasonQt_iOS.h
    }
}

exists($$PWD/JasonQt_gSoap.pri) {
    include($$PWD/JasonQt_gSoap.pri)
}

exists($$PWD/JasonQt_JsonStream.h) {
    SOURCES += $$PWD/JasonQt_JsonStream.cpp
    HEADERS += $$PWD/JasonQt_JsonStream.h
}

exists($$PWD/JasonQt_Lan.h) {
    SOURCES += $$PWD/JasonQt_Lan.cpp
    HEADERS += $$PWD/JasonQt_Lan.h
}

exists($$PWD/JasonQt_Language.h) {
    SOURCES += $$PWD/JasonQt_Language.cpp
    HEADERS += $$PWD/JasonQt_Language.h
}

exists($$PWD/JasonQt_LanRoom.h) {
    SOURCES += $$PWD/JasonQt_LanRoom.cpp
    HEADERS += $$PWD/JasonQt_LanRoom.h
}

exists($$PWD/JasonQt_LocalClient.h) {
    SOURCES += $$PWD/JasonQt_LocalClient.cpp
    HEADERS += $$PWD/JasonQt_LocalClient.h
}

exists($$PWD/JasonQt_LocalServer.h) {
    SOURCES += $$PWD/JasonQt_LocalServer.cpp
    HEADERS += $$PWD/JasonQt_LocalServer.h
}

contains(QT, network) {
    exists($$PWD/JasonQt_LocalSocket.h) {
        SOURCES += $$PWD/JasonQt_LocalSocket.cpp
        HEADERS += $$PWD/JasonQt_LocalSocket.h
    }
}

exists($$PWD/JasonQt_Net.h) {
    SOURCES += $$PWD/JasonQt_Net.cpp
    HEADERS += $$PWD/JasonQt_Net.h
}

contains(QT, opengl) {
    exists($$PWD/JasonQt_OpenGL.h) {
        SOURCES += $$PWD/JasonQt_OpenGL.cpp
        HEADERS += $$PWD/JasonQt_OpenGL.h
    }
}

exists($$PWD/JasonQt_PropertyAnimation.h) {
    SOURCES += $$PWD/JasonQt_PropertyAnimation.cpp
    HEADERS += $$PWD/JasonQt_PropertyAnimation.h
}

contains(QT, qml) {
    exists($$PWD/JasonQt_QML.h) {
        SOURCES += $$PWD/JasonQt_QML.cpp
        HEADERS += $$PWD/JasonQt_QML.h
    }
}

contains(QT, qml) {
    exists($$PWD/JasonQt_QRCodeReader.pri) {
        include($$PWD/JasonQt_QRCodeReader.pri)
    }
}

exists($$PWD/JasonQt_QRCodeWriter.pri) {
    include($$PWD/JasonQt_QRCodeWriter.pri)
}

contains(QT, serialport) {
    exists($$PWD/JasonQt_SerialPort.h) {
        SOURCES += $$PWD/JasonQt_SerialPort.cpp
        HEADERS += $$PWD/JasonQt_SerialPort.h
    }
}

exists($$PWD/JasonQt_Settings.h) {
    SOURCES += $$PWD/JasonQt_Settings.cpp
    HEADERS += $$PWD/JasonQt_Settings.h
}

contains(QT, network) {
    exists($$PWD/JasonQt_Sjf.pri) {
        INCLUDEPATH += $$PWD/JasonQt_Sjf
        include($$PWD/JasonQt_Sjf.pri)
    }
}

exists($$PWD/JasonQt_TcpClient.h) {
    SOURCES += $$PWD/JasonQt_TcpClient.cpp
    HEADERS += $$PWD/JasonQt_TcpClient.h
}

exists($$PWD/JasonQt_TcpServer.h) {
    SOURCES += $$PWD/JasonQt_TcpServer.cpp
    HEADERS += $$PWD/JasonQt_TcpServer.h
}

contains(QT, network) {
    exists($$PWD/JasonQt_TcpSocket.h) {
        SOURCES += $$PWD/JasonQt_TcpSocket.cpp
        HEADERS += $$PWD/JasonQt_TcpSocket.h
    }
}

exists($$PWD/JasonQt_Translation.h) {
    SOURCES += $$PWD/JasonQt_Translation.cpp
    HEADERS += $$PWD/JasonQt_Translation.h
}

exists($$PWD/JasonQt_Trie.h) {
    SOURCES += $$PWD/JasonQt_Trie.cpp
    HEADERS += $$PWD/JasonQt_Trie.h
}

contains(QT, network) {
    exists($$PWD/JasonQt_UDP.h) {
        SOURCES += $$PWD/JasonQt_UDP.cpp
        HEADERS += $$PWD/JasonQt_UDP.h
    }
}

contains(QT, multimedia | concurrent) {
    exists($$PWD/JasonQt_Vop.h) {
        SOURCES += $$PWD/JasonQt_Vop.cpp
        HEADERS += $$PWD/JasonQt_Vop.h
    }
}

exists($$PWD/JasonQt_Weather.h) {
    SOURCES += $$PWD/JasonQt_Weather.cpp
    HEADERS += $$PWD/JasonQt_Weather.h
}

contains(QT, webenginewidgets) {
    exists($$PWD/JasonQt_WebEngine.h) {
        SOURCES += $$PWD/JasonQt_WebEngine.cpp
        HEADERS += $$PWD/JasonQt_WebEngine.h
    }
}
