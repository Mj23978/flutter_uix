/*
 * Copyright 2020 Pawan Kumar. All rights reserved.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
import 'package:flutter_uix/src/flutter/flutterx_mixins/alignment_mixin.dart';
import 'package:flutter_uix/src/flutter/flutterx_mixins/neu_mixin.dart';
import 'package:flutter_uix/flutter_uix.dart';

import 'package:flutter/material.dart';

import 'builder.dart';
import 'common/flutter_curve.dart';
import 'flutterx_mixins/color_mixin.dart';
import 'flutterx_mixins/padding_mixin.dart';

class FxBox extends FxWidgetBuilder<Widget>
    with
        FxAlignmentMixing<FxBox>,
        FxColorMixin<FxBox>,
        FxPaddingMixin<FxBox>,
        FxNeuMixin {
  FxBox({this.child}) {
    setChildForAlignment(this);
    setChildToColor(this);
    setChildToPad(this);
  }

  final Widget? child;

  bool _isCircle = false;
  List<BoxShadow>? _boxShadow;
  BoxBorder? _border;
  BorderRadius? _borderRadius;
  Gradient? _gradient;
  double? _height;
  double? _width;
  FxNeumorph? _flutterNeumorph;

  EdgeInsetsGeometry? _margin;
  Matrix4? _transform;

  DecorationImage? _bgImage;

  FxBox height(double val) => this.._height = val;

  FxBox width(double val) => this.._width = val;

  FxBox padding(EdgeInsetsGeometry val) => this..flutterPadding = val;

  FxBox margin(EdgeInsetsGeometry val) => this.._margin = val;

  @override
  FxBox color(Color color) => this..flutterColor = color;

  FxBox hexColor(String colorHex) =>
      this..flutterColor = Fx.hexToColor(colorHex);

  // transforming
  FxBox transform(Matrix4 val) => this.._transform = val;

  FxBox get circle => this.._isCircle = true;

  FxBox get rounded =>
      this.._borderRadius = BorderRadius.circular(double.infinity);

  /// Shadowing
  FxBox get shadow {
    _boxShadow = [
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        blurRadius: 3.0,
        spreadRadius: 1.0,
        offset: Offset(0.0, 1.0),
      ),
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.06),
        blurRadius: 2.0,
        spreadRadius: 1.0,
        offset: Offset(0.0, 1.0),
      ),
    ];

    return this;
  }

  FxBox get shadowSm {
    _boxShadow = [
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.05),
        blurRadius: 2.0,
        spreadRadius: 0.0,
        offset: Offset(0.0, 1.0),
      ),
    ];

    return this;
  }

  FxBox get shadowMd {
    _boxShadow = [
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        blurRadius: 6.0,
        spreadRadius: -1.0,
        offset: Offset(0.0, 4.0),
      ),
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.06),
        blurRadius: 4.0,
        spreadRadius: -1.0,
        offset: Offset(0.0, 2.0),
      ),
    ];

    return this;
  }

  FxBox get shadowLg {
    _boxShadow = [
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        blurRadius: 15.0,
        spreadRadius: -3.0,
        offset: Offset(0.0, 10.0),
      ),
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.05),
        blurRadius: 6.0,
        spreadRadius: -2.0,
        offset: Offset(0.0, 4.0),
      ),
    ];

    return this;
  }

  /// Provide custom list of box shadows
  FxBox withShadow(List<BoxShadow> shadows) {
    _boxShadow = shadows;
    return this;
  }

  /// Provide custom BorderRadius
  FxBox withBorderRadius(BorderRadius borderRadius) {
    _borderRadius = borderRadius;
    return this;
  }

  FxBox shadowOutline({Color? outlineColor}) {
    _boxShadow = [
      BoxShadow(
        color: outlineColor?.withOpacity(0.5) ??
            const Color.fromRGBO(66, 153, 225, 0.5),
        blurRadius: 0.0,
        spreadRadius: 3.0,
        offset: const Offset(0.0, 0.0),
      ),
    ];

    return this;
  }

  /// Bordering
  FxBox border(
      {Color color = Colors.black,
      double width = 1.0,
      BorderStyle style = BorderStyle.solid}) {
    _border = Border.all(color: color, width: width, style: style);
    return this;
  }

  ///Gradienting
  FxBox linearGradient(List<Color> colors) =>
      this.._gradient = LinearGradient(colors: colors);

  FxBox radialGradient(List<Color> colors) =>
      this.._gradient = RadialGradient(colors: colors);

  FxBox sweepGradient(List<Color> colors) =>
      this.._gradient = SweepGradient(colors: colors);

  FxBox withGradient(Gradient gradient) => this.._gradient = gradient;

  FxBox bgImage(DecorationImage image) => this.._bgImage = image;

  FxBox neumorphic(
          {Color? color,
          FxCurve curve = FxCurve.concave,
          double elevation = 12.0}) =>
      this
        .._flutterNeumorph = flutterDecoration(
          color ?? flutterColor ?? ThemeData().scaffoldBackgroundColor,
          curve,
          elevation,
        );

  @override
  Widget make({Key? key}) {
    return Container(
      key: key,
      height: _height,
      width: _width,
      padding: flutterPadding,
      margin: _margin,
      alignment: flutterAlignment,
      transform: _transform,
      child: child,
      decoration: _flutterNeumorph != null
          ? BoxDecoration(
              borderRadius: _isCircle ? null : _borderRadius,
              shape: _isCircle ? BoxShape.circle : BoxShape.rectangle,
              boxShadow: _flutterNeumorph!.shadows,
              border: _border,
              gradient: _flutterNeumorph!.gradient,
              image: _bgImage,
            )
          : BoxDecoration(
              color: flutterColor,
              borderRadius: _isCircle ? null : _borderRadius,
              shape: _isCircle ? BoxShape.circle : BoxShape.rectangle,
              boxShadow: _boxShadow ?? [],
              border: _border,
              gradient: _gradient,
              image: _bgImage,
            ),
    );
  }
}

extension ContainerWidgetExtension on Widget {
  FxBox get box => FxBox(child: this);
}
