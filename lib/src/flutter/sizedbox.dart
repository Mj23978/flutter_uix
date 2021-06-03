/*
 * Copyright (c) 2020 Pawan Kumar. All rights reserved.
 *
 *  * Licensed under the Apache License, Version 2.0 (the "License");
 *  * you may not use this file except in compliance with the License.
 *  * You may obtain a copy of the License at
 *  * http://www.apache.org/licenses/LICENSE-2.0
 *  * Unless required by applicable law or agreed to in writing, software
 *  * distributed under the License is distributed on an "AS IS" BASIS,
 *  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  * See the License for the specific language governing permissions and
 *  * limitations under the License.
 */

import 'package:flutter/material.dart';
import 'package:flutter_uix/src/flutter_uix_extensions.dart';

extension SizedBoxExtension on Widget {
  ///All available widths
  Widget wPix(double width, {Key? key}) => SizedBox(
        key: key,
        width: width,
        child: this,
      );

  Widget wPer(BuildContext context, double percent, {Key? key}) {
    assert(percent < 100 && percent > 0,
        "Provided Width value Must be in 0..100 range");
    return SizedBox(
      key: key,
      width: context.percentWidth * percent,
      child: this,
    );
  }

  Widget wHalf(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.percentWidth * 50,
        child: this,
      );

  Widget wFull(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidth,
        child: this,
      );

  ///All available heights

  Widget hPix(double height) => SizedBox(
        key: key,
        height: height,
        child: this,
      );

  Widget hPer(BuildContext context, double percent, {Key? key}) {
    assert(percent < 100 && percent > 0,
        "Provided Height value Must be in 0..100 range");
    return SizedBox(
      key: key,
      width: context.percentHeight * percent,
      child: this,
    );
  }

  Widget hHalf(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        height: context.percentHeight * 50,
        child: this,
      );

  Widget hFull(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        height: context.screenHeight,
        child: this,
      );

  /// All Size Width - Height
  Widget whPix(double width, double height) => SizedBox(
        key: key,
        width: width,
        height: height,
        child: this,
      );

  Widget whPer(BuildContext context,
      {double wPercent = 0, double hPercent = 0, Key? key}) {
    assert(wPercent < 100 && wPercent > 0,
        "Provided Width value Must be in 0..100 range");
    assert(hPercent < 100 && hPercent > 0,
        "Provided Height value Must be in 0..100 range");
    return SizedBox(
      key: key,
      width: context.percentWidth * wPercent,
      height: context.percentWidth * hPercent,
      child: this,
    );
  }

  Widget whHalf(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.percentWidth * 50,
        height: context.percentHeight * 50,
        child: this,
      );

  Widget whFull(BuildContext context, {Key? key}) => SizedBox(
        key: key,
        width: context.screenWidth,
        height: context.screenHeight,
        child: this,
      );
}

extension SizedBoxListExtension on List<num> {
  Widget sbwh({Key? key, Widget? child}) {
    assert(length == 2, "Your List Must Have Exactly 2 Members");
    return SizedBox(
      width: this[0].toDouble(),
      height: this[1].toDouble(),
      key: key,
      child: child,
    );
  }
}
