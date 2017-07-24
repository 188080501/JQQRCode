// -*- mode:c++; tab-width:2; indent-tabs-mode:nil; c-basic-offset:2 -*-
/*
 *  DecoderResult.cpp
 *  zxing
 *
 *  Created by Christian Brunschen on 20/05/2008.
 *  Copyright 2008-2011 ZXing authors All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <zxing/common/DecoderResult.h>

using namespace std;
using namespace zxing;

DecoderResult::DecoderResult(ArrayRef<char> rawBytes,
                             Ref<String> text,
                             ArrayRef< ArrayRef<char> >& byteSegments,
                             string const& ecLevel) :
  rawBytes_(rawBytes),
  text_(text),
  byteSegments_(byteSegments),
  ecLevel_(ecLevel) {}

DecoderResult::DecoderResult(ArrayRef<char> rawBytes,
                             Ref<String> text)
  : rawBytes_(rawBytes), text_(text) {}

ArrayRef<char> DecoderResult::getRawBytes() {
  return rawBytes_;
}

Ref<String> DecoderResult::getText() {
  return text_;
}
