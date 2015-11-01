/*
    This file is part of JasonQt

    Copyright: Jason

    Contact email: 188080501@qq.com

    GNU Lesser General Public License Usage
    Alternatively, this file may be used under the terms of the GNU Lesser
    General Public License version 2.1 or version 3 as published by the Free
    Software Foundation and appearing in the file LICENSE.LGPLv21 and
    LICENSE.LGPLv3 included in the packaging of this file. Please review the
    following information to ensure the GNU Lesser General Public License
    requirements will be met: https://www.gnu.org/licenses/lgpl.html and
    http://www.gnu.org/licenses/old-licenses/lgpl-2.1.html.
*/

#include "JasonQt_QRCodeWriter.h"

using namespace JasonQt_QRCodeWriter;

QImage JasonQt_QRCodeWriter::makeQRcode(const QString &data)
{
    QImage image(QSize(512, 512), QImage::Format_RGB32);

    QPainter painter(&image);
    //NOTE: I have hardcoded some parameters here that would make more sense as variables.
    QRcode *qr = QRcode_encodeString(data.toLatin1().data(), 1, QR_ECLEVEL_H, QR_MODE_8, 0);
    if(qr)
    {
        QColor fg("#000000");
        QColor bg("#ffffff");

        painter.setBrush(bg);
        painter.setPen(Qt::NoPen);
        painter.drawRect(0, 0, image.width(), image.height());

        painter.setBrush(fg);

        const double s = (qr->width > 0) ? (qr->width) : (1);
        const double aspect = image.width() / image.height();
        const double scale = ((aspect > 1.0) ? image.height() : image.width()) / s;

        for(int y = 0; y < s; y++)
        {
            const int yy = y * s;
            for(int x = 0; x < s; x++)
            {
                const int xx = yy + x;
                const unsigned char b = qr->data[xx];

                if(b & 0x01)
                {
                    const double rx1 = x * scale, ry1 = y * scale;
                    QRectF r(rx1, ry1, scale, scale);
                    painter.drawRects(&r,1);
                }
            }
        }

        QRcode_free(qr);
    }
    else
    {
        QColor error("red");
        painter.setBrush(error);
        painter.drawRect(0, 0, image.width(), image.height());

        qDebug("QRCode error");
    }

    painter.end();
    return image;
}
