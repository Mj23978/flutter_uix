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

import 'package:flutter/material.dart';
import '../../../flutter_uix.dart';
import '../builder.dart';
import '../flutterx_mixins/alignment_mixin.dart';
import '../flutterx_mixins/color_mixin.dart';
import '../flutterx_mixins/curves_mixin.dart';
import '../flutterx_mixins/duration_mixin.dart';
import '../flutterx_mixins/neu_mixin.dart';
import '../flutterx_mixins/padding_mixin.dart';
import '../flutterx_mixins/round_mixin.dart';


class FxAnimatedBox extends FxWidgetBuilder<Widget>
    with
        FxAlignmentMixing<FxAnimatedBox>,
        FxDurationMixing<FxAnimatedBox>,
        FxCurvesMixing<FxAnimatedBox>,
        FxColorMixin<FxAnimatedBox>,
        FxPaddingMixin<FxAnimatedBox>,
        FxRoundMixin<FxAnimatedBox>,
        FxNeuMixin {
  FxAnimatedBox({this.child}) {
    setChildToColor(this);
    setChildToPad(this);
    setChildToRound(this);
    setChildForCurve(this);
    setChildForDuration(this);
    setChildForAlignment(this);
  }

  final Widget? child;
  BoxBorder? _border;
  Gradient? _gradient;
  double? _height;
  double? _width;
  EdgeInsetsGeometry? _margin;
  DecorationImage? _bgImage;
  final bool _isCircleRounded = false;
  List<BoxShadow>? _boxShadow;
  FxNeumorph? _flutterNeumorph;
  Matrix4? _transform;

  @override
  FxAnimatedBox color(Color color) => this..flutterColor = color;

  FxAnimatedBox hexColor(String colorHex) =>
      this..flutterColor = Fx.hexToColor(colorHex);

  FxAnimatedBox height(double val) => this.._height = val;

  FxAnimatedBox width(double val) => this.._width = val;

  FxAnimatedBox border(
      {Color color = Colors.black,
      double width = 1.0,
      BorderStyle style = BorderStyle.solid}) {
    _border = Border.all(color: color, width: width, style: style);
    return this;
  }

  FxAnimatedBox padding(EdgeInsetsGeometry val) => this..flutterPadding = val;

  // Gradients
  FxAnimatedBox linearGradient(List<Color> colors) =>
      this.._gradient = LinearGradient(colors: colors);

  FxAnimatedBox radialGradient(List<Color> colors) =>
      this.._gradient = RadialGradient(colors: colors);

  FxAnimatedBox sweepGradient(List<Color> colors) =>
      this.._gradient = SweepGradient(colors: colors);

  FxAnimatedBox withGradient(Gradient gradient) => this.._gradient = gradient;

  FxAnimatedBox margin(EdgeInsetsGeometry val) => this.._margin = val;

  // DecorationImage BoxDecoration
  FxAnimatedBox bgImage(DecorationImage image) => this.._bgImage = image;

  // transforming
  FxAnimatedBox transform(Matrix4 val) => this.._transform = val;


  /// Shadowing
  FxAnimatedBox get shadow {
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

  FxAnimatedBox get shadowXs {
    _boxShadow = [
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.05),
        blurRadius: 0.0,
        spreadRadius: 1.0,
        offset: Offset(0.0, 0.0),
      ),
    ];

    return this;
  }

  FxAnimatedBox get shadowSm {
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

  FxAnimatedBox get shadowMd {
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

  FxAnimatedBox get shadowLg {
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

  FxAnimatedBox get shadowXl {
    _boxShadow = [
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.1),
        blurRadius: 25.0,
        spreadRadius: -5.0,
        offset: Offset(0.0, 20.0),
      ),
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.04),
        blurRadius: 10.0,
        spreadRadius: -5.0,
        offset: Offset(0.0, 10.0),
      ),
    ];

    return this;
  }

  FxAnimatedBox get shadow2xl {
    _boxShadow = [
      const BoxShadow(
        color: Color.fromRGBO(0, 0, 0, 0.25),
        blurRadius: 50.0,
        spreadRadius: -12.0,
        offset: Offset(0.0, 25.0),
      ),
    ];

    return this;
  }

  FxAnimatedBox withShadow(List<BoxShadow> shadows) {
    _boxShadow = shadows;
    return this;
  }

  FxAnimatedBox shadowOutline({Color? outlineColor}) {
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

  FxAnimatedBox neumorphic(
          {Color? color,
          FxCurve curve = FxCurve.concave,
          double elevation = 12.0}) =>
      this
        .._flutterNeumorph = flutterDecoration(
            color ?? flutterColor ?? ThemeData().scaffoldBackgroundColor,
            curve,
            elevation);

  @override
  Widget make({Key? key}) {
    return AnimatedContainer(
        child: child,
        curve: flutterCurve ?? Curves.easeIn,
        duration: flutterDuration ?? const Duration(seconds: 1),
        height: _height,
        width: _width,
        padding: flutterPadding,
        margin: _margin,
        alignment: flutterAlignment,
        transform: _transform,
        decoration: _flutterNeumorph != null
            ? BoxDecoration(
                borderRadius: _isCircleRounded
                    ? null
                    : BorderRadius.circular(roundedValue),
                shape: _isCircleRounded ? BoxShape.circle : BoxShape.rectangle,
                boxShadow: _flutterNeumorph!.shadows,
                border: _border,
                gradient: _flutterNeumorph!.gradient,
                image: _bgImage,
              )
            : BoxDecoration(
                color: flutterColor,
                borderRadius: _isCircleRounded
                    ? null
                    : BorderRadius.circular(roundedValue),
                shape: _isCircleRounded ? BoxShape.circle : BoxShape.rectangle,
                boxShadow: _boxShadow ?? [],
                border: _border,
                gradient: _gradient,
                image: _bgImage,
              ));
  }
}

extension AnimatedContainerWidgetExtension on Widget {
  FxAnimatedBox get animatedBox => FxAnimatedBox(child: this);
}
