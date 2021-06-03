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

mixin FxPaddingMixin<T> {
  T? _childToPad;

  @protected
  EdgeInsetsGeometry? flutterPadding;

  @protected
  void setChildToPad(T child) {
    _childToPad = child;
  }

  /// Creates EdgeInsets.all with Provided Value
  T? p([double value = 8.0]) {
    return _padIt(child: _childToPad, padding: EdgeInsets.all(value));
  }

  /// Creates EdgeInsets.symmetric with Provided Value
  T? pSy({double x = 0.0, double y = 0.0}) {
    return _padIt(
        child: _childToPad,
        padding: EdgeInsets.symmetric(horizontal: x, vertical: y));
  }

  /// Creates EdgeInsets.only with Provided Value for Top Side
  T? pt([double value = 8.0]) {
    return _padIt(child: _childToPad, padding: EdgeInsets.only(top: value));
  }

  /// Creates EdgeInsets.only with Provided Value for Bottom Side
  T? pb([double value = 8.0]) {
    return _padIt(child: _childToPad, padding: EdgeInsets.only(bottom: value));
  }

  /// Creates EdgeInsets.only with Provided Value for Left Side
  T? pl([double value = 8.0]) {
    return _padIt(child: _childToPad, padding: EdgeInsets.only(left: value));
  }

  /// Creates EdgeInsets.only with Provided Value for Right Side
  T? pr([double value = 8.0]) {
    return _padIt(child: _childToPad, padding: EdgeInsets.only(right: value));
  }

  /// Creates EdgeInsets.only with Provided Value for right Side
  T? po({double t = 0.0, double b = 0.0, double l = 0.0, double r = 0.0}) {
    return _padIt(
        child: _childToPad,
        padding: EdgeInsets.only(bottom: b, left: l, right: r, top: t));
  }

  T? _padIt({required EdgeInsetsGeometry padding, required T? child}) {
    flutterPadding = padding;
    return child;
  }
}
