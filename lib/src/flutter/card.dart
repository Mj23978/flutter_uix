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
import 'package:flutter_uix/flutter_x.dart';

import 'builder.dart';
import 'flutterx_mixins/color_mixin.dart';
import 'flutterx_mixins/padding_mixin.dart';
import 'flutterx_mixins/round_mixin.dart';

class FxCard extends FxWidgetBuilder<Widget>
    with FxColorMixin<FxCard>, FxPaddingMixin<FxCard>, FxRoundMixin<FxCard> {
  FxCard(
    this._child,
  ) : assert(_child != null) {
    setChildToColor(this);
    setChildToPad(this);
    setChildToRound(this);
  }
  final Widget _child;

  // Color _shadowColor;
  double _elevation = 1.0;
  ShapeBorder? _shape;

  @override
  FxCard color(Color color) => this..flutterColor = color;

  FxCard hexColor(String colorHex) =>
      this..flutterColor = Fx.hexToColor(colorHex);

  FxCard elevation(double val) => this.._elevation = val;

  FxCard get circular => this.._shape = const CircleBorder();
  FxCard get zeroCircular => this
    .._shape = const CircleBorder()
    .._elevation = 0.0;

  FxCard get zero => this.._elevation = 0.0;

  @override
  Widget make({Key? key}) {
    return Card(
      key: key,
      margin: flutterPadding,
      child: _child,
      color: flutterColor ?? ThemeData().cardColor,
      clipBehavior: Clip.antiAlias,
      elevation: _elevation,
      shape: roundedValue.isNotNull
          ? RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(roundedValue))
          : _shape,
      // shadowColor: _shadowColor,
    );
  }
}

extension CardExtension on Widget {
  FxCard get card => FxCard(this);
}
