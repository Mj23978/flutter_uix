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

import 'builder.dart';
import 'flutterx_mixins/padding_mixin.dart';

class _FxPaddingBuilder extends FxWidgetBuilder<Widget>
    with FxPaddingMixin<_FxPaddingBuilder> {
  _FxPaddingBuilder(this._child);
  final Widget _child;

  @override
  Widget make({Key? key}) {
    return Padding(
      key: key,
      child: _child,
      padding: flutterPadding!,
    );
  }
}

extension PaddingExtensions on Widget {
  _FxPaddingBuilder get pad => _FxPaddingBuilder(this);

  /// Creates EdgeInsets.all with Provided Value
  Padding p(double value, {Key? key}) {
    return Padding(
      key: key,
      child: this,
      padding: EdgeInsets.all(value),
    );
  }

  /// Creates EdgeInsets.symmetric with Provided Value
  Padding pSy({double x = 0.0, double y = 0.0, Key? key}) {
    return Padding(
      key: key,
      child: this,
      padding: EdgeInsets.symmetric(horizontal: x, vertical: y),
    );
  }

  /// Creates EdgeInsets.only with Provided Value for Top Side
  Padding px(double value, {Key? key}) {
    return Padding(
      key: key,
      child: this,
      padding: EdgeInsets.symmetric(horizontal: value),
    );
  }

  /// Creates EdgeInsets.only with Provided Value for Top Side
  Padding py(double value, {Key? key}) {
    return Padding(
      key: key,
      child: this,
      padding: EdgeInsets.symmetric(vertical: value),
    );
  }

  /// Creates EdgeInsets.only with Provided Value for Top Side
  Padding pt(double value, {Key? key}) {
    return Padding(
      key: key,
      child: this,
      padding: EdgeInsets.only(top: value),
    );
  }

  /// Creates EdgeInsets.only with Provided Value for Bottom Side
  Padding pb(double value, {Key? key}) {
    return Padding(
      key: key,
      child: this,
      padding: EdgeInsets.only(bottom: value),
    );
  }

  /// Creates EdgeInsets.only with Provided Value for Left Side
  Padding pl(double value, {Key? key}) {
    return Padding(
      key: key,
      child: this,
      padding: EdgeInsets.only(left: value),
    );
  }

  /// Creates EdgeInsets.only with Provided Value for Right Side
  Padding pr(double value, {Key? key}) {
    return Padding(
      key: key,
      child: this,
      padding: EdgeInsets.only(right: value),
    );
  }

  /// Creates EdgeInsets.only with Provided Value for right Side
  Padding po(
      {double t = 0.0,
      double b = 0.0,
      double l = 0.0,
      double r = 0.0,
      Key? key}) {
    return Padding(
      key: key,
      child: this,
      padding: EdgeInsets.only(bottom: b, left: l, right: r, top: t),
    );
  }

  Padding pLTRB(
    double left,
    double top,
    double right,
    double bottom, {
    Key? key,
  }) =>
      Padding(
        key: key,
        padding: EdgeInsets.fromLTRB(left, top, right, bottom),
        child: this,
      );
}
