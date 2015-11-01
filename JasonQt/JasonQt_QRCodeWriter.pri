INCLUDEPATH  += $$PWD/JasonQt_QRCodeWriter/

# qrencode
HEADERS += $$PWD/JasonQt_QRCodeWriter/qrencode/qrencode.h \
    $$PWD/JasonQt_QRCodeWriter/qrencode/bitstream.h \
    $$PWD/JasonQt_QRCodeWriter/qrencode/mask.h \
    $$PWD/JasonQt_QRCodeWriter/qrencode/mmask.h \
    $$PWD/JasonQt_QRCodeWriter/qrencode/mqrspec.h \
    $$PWD/JasonQt_QRCodeWriter/qrencode/qrencode_inner.h \
    $$PWD/JasonQt_QRCodeWriter/qrencode/qrinput.h \
    $$PWD/JasonQt_QRCodeWriter/qrencode/qrspec.h \
    $$PWD/JasonQt_QRCodeWriter/qrencode/rscode.h \
    $$PWD/JasonQt_QRCodeWriter/qrencode/split.h \
    $$PWD/JasonQt_QRCodeWriter/qrencode/config.h \
    $$PWD/JasonQt_QRCodeWriter/JasonQt_QRCodeWriter.h

SOURCES += $$PWD/JasonQt_QRCodeWriter/qrencode/qrencode.c \
    $$PWD/JasonQt_QRCodeWriter/qrencode/bitstream.c \
    $$PWD/JasonQt_QRCodeWriter/qrencode/mask.c \
    $$PWD/JasonQt_QRCodeWriter/qrencode/mmask.c \
    $$PWD/JasonQt_QRCodeWriter/qrencode/mqrspec.c \
    $$PWD/JasonQt_QRCodeWriter/qrencode/qrinput.c \
    $$PWD/JasonQt_QRCodeWriter/qrencode/qrspec.c \
    $$PWD/JasonQt_QRCodeWriter/qrencode/rscode.c \
    $$PWD/JasonQt_QRCodeWriter/qrencode/split.c \
    $$PWD/JasonQt_QRCodeWriter/JasonQt_QRCodeWriter.cpp
