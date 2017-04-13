## 介绍

JQQRCode，是一个给Qt开发的，二维码相关功能的封装。

其中解析/扫描二维码部分底层为zxing，生成/制作二维码部分底层为qrencode。

## 使用举例

* 从图片解析二维码

```
const QImage testImage( ":/images/test.png" );
JQQRCodeReader qrCodeReader;
qDebug() << "decodeImage return:" << qrCodeReader.decodeImage( testImage );
```

* 生成二维码

```
const auto &&qrCodeImage = JQQRCodeWriter::makeQRcode( "QRCodeWriter" );
qDebug() << qrCodeImage;
```

## 系统要求
编译本工程，请使用支持C++11的编译器

目前我测试了macOS、iOS、Windows (MinGW & VS2013)和Android，均正常工作

理论上可以部署到任何Qt支持的平台上。

注意：在iOS使用的时候，一定要给Info.plist加上NSCameraUsageDescription，不然程序一调用摄像头就崩溃

本库源码均已开源在了GitHub上。

GitHub地址：https://github.com/188080501/JQQRCode

方便的话，帮我点个星星，或者反馈一下使用意见，这是对我莫大的帮助。

若你已经有了更好的建议，或者想要一些新功能，可以直接邮件我，我的邮箱是：Jason@JasonServer.com

或者直接在GitHub上提交问题：
https://github.com/188080501/JQQRCode/issues