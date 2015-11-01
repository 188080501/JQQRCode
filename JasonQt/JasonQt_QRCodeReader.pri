QT += multimedia

INCLUDEPATH  += $$PWD/JasonQt_QRCodeReader/

DEFINES += QZXING_LIBRARY \
        ZXING_ICONV_CONST \
        DISABLE_LIBRARY_FEATURES \
        NO_ICONV

INCLUDEPATH  += $$PWD/JasonQt_QRCodeReader/QZXing \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing

HEADERS += $$PWD/JasonQt_QRCodeReader/QZXing/QZXing_global.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/CameraImageWrapper.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/imagehandler.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/QZXing.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/ZXing.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/IllegalStateException.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/InvertedLuminanceSource.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/ChecksumException.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/ResultPointCallback.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/ResultPoint.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/Result.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/ReaderException.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/Reader.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/NotFoundException.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/MultiFormatReader.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/LuminanceSource.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/FormatException.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/Exception.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/DecodeHints.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/BinaryBitmap.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/Binarizer.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/BarcodeFormat.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/aztec/AztecReader.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/aztec/AztecDetectorResult.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/aztec/decoder/Decoder.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/aztec/detector/Detector.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/StringUtils.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/Str.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/Point.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/PerspectiveTransform.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/IllegalArgumentException.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/HybridBinarizer.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/GridSampler.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/GreyscaleRotatedLuminanceSource.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/GreyscaleLuminanceSource.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/GlobalHistogramBinarizer.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/DetectorResult.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/DecoderResult.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/Counted.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/CharacterSetECI.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/BitSource.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/BitMatrix.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/BitArray.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/Array.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/detector/MathUtils.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/detector/JavaMath.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/detector/WhiteRectangleDetector.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/detector/MonochromeRectangleDetector.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/reedsolomon/ReedSolomonException.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/reedsolomon/ReedSolomonDecoder.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/reedsolomon/GenericGFPoly.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/reedsolomon/GenericGF.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/datamatrix/Version.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/datamatrix/DataMatrixReader.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/datamatrix/decoder/Decoder.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/datamatrix/decoder/DecodedBitStreamParser.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/datamatrix/decoder/DataBlock.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/datamatrix/decoder/BitMatrixParser.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/datamatrix/detector/DetectorException.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/datamatrix/detector/Detector.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/datamatrix/detector/CornerPoint.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/oned/UPCEReader.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/oned/UPCEANReader.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/oned/UPCAReader.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/oned/OneDResultPoint.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/oned/OneDReader.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/oned/MultiFormatUPCEANReader.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/oned/MultiFormatOneDReader.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/oned/ITFReader.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/oned/EAN13Reader.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/oned/EAN8Reader.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/oned/Code128Reader.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/oned/Code39Reader.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/oned/CodaBarReader.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/oned/Code93Reader.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/Version.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/QRCodeReader.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/FormatInformation.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/ErrorCorrectionLevel.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/decoder/Mode.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/decoder/Decoder.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/decoder/DecodedBitStreamParser.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/decoder/DataMask.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/decoder/DataBlock.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/decoder/BitMatrixParser.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/detector/FinderPatternInfo.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/detector/FinderPatternFinder.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/detector/FinderPattern.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/detector/Detector.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/detector/AlignmentPatternFinder.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/detector/AlignmentPattern.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/multi/MultipleBarcodeReader.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/multi/GenericMultipleBarcodeReader.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/multi/ByQuadrantReader.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/multi/qrcode/QRCodeMultiReader.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/multi/qrcode/detector/MultiFinderPatternFinder.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/multi/qrcode/detector/MultiDetector.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/pdf417/decoder/ec/ErrorCorrection.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/pdf417/decoder/ec/ModulusGF.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/pdf417/decoder/ec/ModulusPoly.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/pdf417/decoder/BitMatrixParser.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/pdf417/decoder/DecodedBitStreamParser.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/pdf417/decoder/Decoder.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/pdf417/detector/Detector.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/pdf417/detector/LinesSampler.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/pdf417/PDF417Reader.h \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/bigint/NumberlikeArray.hh \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/bigint/BigUnsignedInABase.hh \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/bigint/BigUnsigned.hh \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/bigint/BigIntegerUtils.hh \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/bigint/BigIntegerLibrary.hh \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/bigint/BigIntegerAlgorithms.hh \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/bigint/BigInteger.hh \
    $$PWD/JasonQt_QRCodeReader/JasonQt_QRCodeReader.h

SOURCES += $$PWD/JasonQt_QRCodeReader/QZXing/CameraImageWrapper.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/imagehandler.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/ResultIO.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/InvertedLuminanceSource.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/ChecksumException.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/ResultPointCallback.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/ResultPoint.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/Result.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/Reader.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/MultiFormatReader.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/LuminanceSource.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/FormatException.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/Exception.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/DecodeHints.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/BinaryBitmap.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/Binarizer.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/BarcodeFormat.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/aztec/AztecReader.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/aztec/AztecDetectorResult.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/StringUtils.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/Str.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/PerspectiveTransform.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/IllegalArgumentException.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/HybridBinarizer.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/GridSampler.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/GreyscaleRotatedLuminanceSource.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/GreyscaleLuminanceSource.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/GlobalHistogramBinarizer.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/DetectorResult.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/DecoderResult.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/CharacterSetECI.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/BitSource.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/BitMatrix.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/BitArray.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/BitArrayIO.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/detector/WhiteRectangleDetector.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/detector/MonochromeRectangleDetector.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/reedsolomon/ReedSolomonException.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/reedsolomon/ReedSolomonDecoder.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/reedsolomon/GenericGFPoly.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/common/reedsolomon/GenericGF.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/datamatrix/DataMatrixReader.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/oned/UPCEReader.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/oned/UPCEANReader.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/oned/UPCAReader.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/oned/OneDResultPoint.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/oned/OneDReader.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/oned/MultiFormatUPCEANReader.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/oned/MultiFormatOneDReader.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/oned/ITFReader.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/oned/EAN13Reader.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/oned/EAN8Reader.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/oned/Code128Reader.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/oned/Code39Reader.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/oned/CodaBarReader.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/oned/Code93Reader.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/QRCodeReader.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/multi/MultipleBarcodeReader.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/multi/GenericMultipleBarcodeReader.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/multi/ByQuadrantReader.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/multi/qrcode/QRCodeMultiReader.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/multi/qrcode/detector/MultiFinderPatternFinder.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/multi/qrcode/detector/MultiDetector.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/aztec/decoder/AztecDecoder.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/aztec/detector/AztecDetector.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/datamatrix/DataMatrixVersion.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/datamatrix/decoder/DataMatrixDecoder.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/datamatrix/decoder/DataMatrixBitMatrixParser.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/datamatrix/decoder/DataMatrixDataBlock.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/datamatrix/decoder/DataMatrixDecodedBitStreamParser.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/datamatrix/detector/DataMatrixCornerPoint.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/datamatrix/detector/DataMatrixDetector.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/datamatrix/detector/DataMatrixDetectorException.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/decoder/QRBitMatrixParser.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/decoder/QRDataBlock.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/decoder/QRDataMask.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/decoder/QRDecodedBitStreamParser.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/decoder/QRDecoder.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/decoder/QRMode.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/detector/QRAlignmentPattern.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/detector/QRAlignmentPatternFinder.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/detector/QRDetector.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/detector/QRFinderPattern.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/detector/QRFinderPatternFinder.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/detector/QRFinderPatternInfo.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/QRVersion.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/QRFormatInformation.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/qrcode/QRErrorCorrectionLevel.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/pdf417/decoder/ec/ErrorCorrection.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/pdf417/decoder/ec/ModulusGF.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/pdf417/decoder/ec/ModulusPoly.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/pdf417/decoder/PDF417BitMatrixParser.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/pdf417/decoder/PDF417DecodedBitStreamParser.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/pdf417/decoder/PDF417Decoder.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/pdf417/detector/PDF417Detector.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/pdf417/detector/LinesSampler.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/zxing/pdf417/PDF417Reader.cpp \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/bigint/BigUnsignedInABase.cc \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/bigint/BigUnsigned.cc \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/bigint/BigIntegerUtils.cc \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/bigint/BigIntegerAlgorithms.cc \
    $$PWD/JasonQt_QRCodeReader/QZXing/zxing/bigint/BigInteger.cc \
    $$PWD/JasonQt_QRCodeReader/QZXing/QZxing.cpp \
    $$PWD/JasonQt_QRCodeReader/JasonQt_QRCodeReader.cpp

RESOURCES += \
    $$PWD/JasonQt_QRCodeReader/JasonQt_QRCodeReader.qrc

win32-msvc*{

    INCLUDEPATH += $$PWD/JasonQt_QRCodeReader/QZXing/zxing/win32/zxing \
            $$PWD/JasonQt_QRCodeReader/QZXing/zxing/win32/zxing/msvc
    HEADERS += $$PWD/JasonQt_QRCodeReader/QZXing/zxing/win32/zxing/msvc/stdint.h \
            $$PWD/JasonQt_QRCodeReader/QZXing/zxing/win32/zxing/iconv.h

    SOURCES += $$PWD/JasonQt_QRCodeReader/QZXing/zxing/win32/zxing/win_iconv.c
}

win32-g++{

    INCLUDEPATH += $$PWD/JasonQt_QRCodeReader/QZXing/zxing/win32/zxing

    HEADERS += $$PWD/JasonQt_QRCodeReader/QZXing/zxing/win32/zxing/iconv.h

    SOURCES += $$PWD/JasonQt_QRCodeReader/QZXing/zxing/win32/zxing/win_iconv.c
}
