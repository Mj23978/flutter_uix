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

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uix/flutter_uix.dart';

import 'builder.dart';
import 'flutterx_mixins/color_mixin.dart';

@protected
class FxTextBuilder extends FxWidgetBuilder<AutoSizeText>
    with FxColorMixin<FxTextBuilder> {
  FxTextBuilder(this._text) : assert(_text != null) {
    setChildToColor(this);
  }

  FxTextBuilder.existing(this._text, this._textStyle) : assert(_text != null) {
    setChildToColor(this);
  }

  String _text;
  String? _fontFamily;
  FontWeight? _fontWeight;
  TextAlign? _textAlign;
  double? _scaleFactor;
  double? _fontSize;
  int? _maxLines;
  FontStyle? _fontStyle;
  double? _letterSpacing;
  double? _lineHeight;
  TextDecoration? _decoration;
  TextStyle? _textStyle;
  TextStyle? _themedStyle;
  Locale? _locale;
  double? _maxFontSize;
  double? _minFontSize;
  AutoSizeGroup? _sizeGroup;
  List<double>? _presetFontSizes;
  bool? _wrapWords;
  double? _stepGranularity;

  FxTextBuilder text(String text) {
    _text = text;
    return this;
  }

  @override
  FxTextBuilder color(Color color) {
    flutterColor = color;
    return this;
  }

  FxTextBuilder hexColor(String colorHex) =>
      this..flutterColor = Fx.hexToColor(colorHex);

  FxTextBuilder maxLines(int lines) {
    _maxLines = lines;
    return this;
  }

  FxTextBuilder fontFamily(String family) {
    _fontFamily = family;
    return this;
  }

  /// Use textStyle to provide custom or any theme style.
  FxTextBuilder textStyle(TextStyle _style) {
    _themedStyle = _style;
    return this;
  }

  FxTextBuilder textAlign(TextAlign textAlign) {
    _textAlign = textAlign;
    return this;
  }

  FxTextBuilder get center => this.._textAlign = TextAlign.center;

  FxTextBuilder size(double size) => this.._fontSize = size;

  FxTextBuilder scale(double scale) =>
      _fontSizedText(child: this, scaleFactor: scale);

  FxTextBuilder weight(FontWeight weight) =>
      _fontWeightedText(child: this, weight: weight);

  FxTextBuilder spacing(double space) => this.._letterSpacing = space;

  FxTextBuilder get bold =>
      _fontWeightedText(child: this, weight: FontWeight.bold);

  FxTextBuilder get italic => this.._fontStyle = FontStyle.italic;

  FxTextBuilder get underline => this.._decoration = TextDecoration.underline;

  FxTextBuilder get lineThrough =>
      this.._decoration = TextDecoration.lineThrough;

  FxTextBuilder get overline => this.._decoration = TextDecoration.overline;

  FxTextBuilder get uppercase => this.._text = _text.toUpperCase();

  FxTextBuilder get lowercase => this.._text = _text.toLowerCase();

  FxTextBuilder lineHeight(double value) => this.._lineHeight = value;

  FxTextBuilder maxFontSize(double value) => this.._maxFontSize = value;

  FxTextBuilder minFontSize(double value) => this.._minFontSize = value;

  FxTextBuilder sizeGroup(AutoSizeGroup group) => this.._sizeGroup = group;

  FxTextBuilder presetFontSizes(List<double> value) =>
      this.._presetFontSizes = value;

  FxTextBuilder wrapWords(bool value) => this.._wrapWords = value;

  FxTextBuilder stepGranularity(double value) => this.._stepGranularity = value;

  FxTextBuilder locale(Locale value) => this.._locale = value;

  FxTextBuilder _fontSizedText(
      {required double scaleFactor, required FxTextBuilder child}) {
    _scaleFactor = scaleFactor;
    return this;
  }

  FxTextBuilder _fontWeightedText(
      {required FontWeight weight, required FxTextBuilder child}) {
    _fontWeight = weight;
    return this;
  }

  @override
  AutoSizeText make({Key? key}) {
    final ts = TextStyle(
      color: flutterColor,
      fontSize: _fontSize,
      fontStyle: _fontStyle,
      fontFamily: _fontFamily,
      fontWeight: _fontWeight,
      letterSpacing: _letterSpacing,
      decoration: _decoration,
      height: _lineHeight,
    );
    return AutoSizeText(_text,
        key: key,
        textAlign: _textAlign,
        maxLines: _maxLines,
        textScaleFactor: _scaleFactor,
        group: _sizeGroup,
        locale: _locale,
        maxFontSize: _maxFontSize ?? double.infinity,
        minFontSize: _minFontSize ?? 12.0,
        presetFontSizes: _presetFontSizes,
        softWrap: true,
        wrapWords: _wrapWords ?? true,
        stepGranularity: _stepGranularity ?? 1,
        style: _themedStyle?.merge(ts) ?? _textStyle?.merge(ts) ?? ts);
  }
}

extension TextExtensions on Text {
  FxTextBuilder get text => FxTextBuilder.existing(data!, style);
}
