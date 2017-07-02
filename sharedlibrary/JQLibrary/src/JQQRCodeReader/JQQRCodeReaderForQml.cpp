﻿/*
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

#include "JQQRCodeReaderForQml.h"

// Qt lib import
#include <QDebug>
#include <QImage>
#include <QSemaphore>
#include <QThreadPool>
#include <QtConcurrent>
#include <QQuickItem>
#include <QQuickItemGrabResult>

JQQRCodeReaderForQmlManage::JQQRCodeReaderForQmlManage():
    threadPool_( new QThreadPool ),
    semaphore_( new QSemaphore )
{
    threadPool_->setMaxThreadCount( std::max( QThread::idealThreadCount() - 1, 1 ) );
    semaphore_->release( threadPool_->maxThreadCount() );
}

JQQRCodeReaderForQmlManage::~JQQRCodeReaderForQmlManage()
{
    threadPool_->waitForDone();
}

void JQQRCodeReaderForQmlManage::analysisItem(QQuickItem *item)
{
    if ( !semaphore_->tryAcquire( 1 ) ) { return; }

    auto result = item->grabToImage();

    connect( result.data(), &QQuickItemGrabResult::ready, [ this, result ]()
    {
        const auto image = result->image();

        QtConcurrent::run( [ this, image ]()
        {
            QImage buf;
            if ( image.width() > image.height() )
            {
                buf = image.copy(
                            ( image.width() - image.height() ) / 2,
                            0,
                            image.height(),
                            image.height()
                        );
            }
            else
            {
                buf = image.copy(
                            0,
                            ( image.height() - image.width() ) / 2,
                            image.width(),
                            image.width()
                        );
            }

            this->decodeImage( buf, this->decodeQrCodeType_ );

            semaphore_->release( 1 );
        } );
    } );
}
