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
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_uix/src/flutter/builder.dart';
import 'package:flutter_uix/src/flutter/flutterx_mixins/color_mixin.dart';
import 'package:flutter_uix/flutter_uix.dart';

@protected
class FxRichText extends FxWidgetBuilder<AutoSizeText>
    with FxColorMixin<FxRichText> {
  FxRichText(this._text) {
    setChildToColor(this);
  }

  FxRichText.existing(this._text, this._textStyle) {
    setChildToColor(this);
  }

  String _text;
  List<TextSpan>? _textSpanChildren;
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
  GestureRecognizer? _gestureRecognizer;
  TextStyle? _textStyle;
  TextStyle? _themedStyle;
  Locale? _locale;
  double? _maxFontSize;
  double? _minFontSize;
  AutoSizeGroup? _sizeGroup;
  List<double>? _presetFontSizes;
  bool? _wrapWords;
  double? _stepGranularity;

  FxRichText tap(Function function) {
    final recognizer = TapGestureRecognizer()
      ..onTap = function as void Function()?;
    return this.._gestureRecognizer = recognizer;
  }

  FxRichText doubleTap(Function function) {
    final recognizer = DoubleTapGestureRecognizer()
      ..onDoubleTap = function as void Function()?;
    return this.._gestureRecognizer = recognizer;
  }

  FxRichText withTextSpanChildren(List<TextSpan> children) {
    _textSpanChildren = children;
    return this;
  }

  @override
  FxRichText color(Color color) {
    flutterColor = color;
    return this;
  }

  FxRichText hexColor(String colorHex) =>
      this..flutterColor = Fx.hexToColor(colorHex);

  FxRichText maxLines(int lines) {
    _maxLines = lines;
    return this;
  }

  FxRichText fontFamily(String family) {
    _fontFamily = family;
    return this;
  }

  /// Use textStyle to provide custom or any theme style.
  FxRichText textStyle(TextStyle _style) {
    _themedStyle = _style;
    return this;
  }

  FxRichText textAlign(TextAlign textAlign) {
    _textAlign = textAlign;
    return this;
  }

  FxRichText get center => this.._textAlign = TextAlign.center;

  FxRichText size(double size) => this.._fontSize = size;

  FxRichText scale(double scale) =>
      _fontSizedText(child: this, scaleFactor: scale);

  FxRichText weight(FontWeight weight) =>
      _fontWeightedText(child: this, weight: weight);

  FxRichText spacing(double space) => this.._letterSpacing = space;

  FxRichText get bold =>
      _fontWeightedText(child: this, weight: FontWeight.bold);

  FxRichText get italic => this.._fontStyle = FontStyle.italic;

  FxRichText get underline => this.._decoration = TextDecoration.underline;

  FxRichText get lineThrough => this.._decoration = TextDecoration.lineThrough;

  FxRichText get overline => this.._decoration = TextDecoration.overline;

  FxRichText get uppercase => this.._text = _text.toUpperCase();

  FxRichText get lowercase => this.._text = _text.toLowerCase();

  FxRichText lineHeight(double value) => this.._lineHeight = value;

  FxRichText maxFontSize(double value) => this.._maxFontSize = value;

  FxRichText minFontSize(double value) => this.._minFontSize = value;

  FxRichText sizeGroup(AutoSizeGroup group) => this.._sizeGroup = group;

  FxRichText presetFontSizes(List<double> value) =>
      this.._presetFontSizes = value;

  FxRichText wrapWords(bool value) => this.._wrapWords = value;

  FxRichText stepGranularity(double value) => this.._stepGranularity = value;

  FxRichText locale(Locale value) => this.._locale = value;

  FxRichText _fontSizedText(
      {required double scaleFactor, required FxRichText child}) {
    _scaleFactor = scaleFactor;
    return this;
  }

  FxRichText _fontWeightedText(
      {required FontWeight weight, required FxRichText child}) {
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
    return AutoSizeText.rich(
      TextSpan(
        text: _text,
        children: _textSpanChildren,
        recognizer: _gestureRecognizer,
        style: _themedStyle?.merge(ts) ?? _textStyle?.merge(ts) ?? ts,
      ),
      maxFontSize: _maxFontSize ?? double.infinity,
      minFontSize: _minFontSize ?? 12.0,
      group: _sizeGroup,
      presetFontSizes: _presetFontSizes,
      wrapWords: _wrapWords ?? true,
      stepGranularity: _stepGranularity ?? 1,
      locale: _locale,
      key: key,
      textAlign: _textAlign,
      maxLines: _maxLines,
      textScaleFactor: _scaleFactor,
      softWrap: true,
    );
  }
}

class FxTextSpan extends FxTextSpanBuilder with FxColorMixin<FxTextSpan> {
  FxTextSpan(this._text) : assert(_text != null) {
    setChildToColor(this);
  }

  String _text;
  GestureRecognizer? _gestureRecognizer;
  TextDecoration? _decoration;
  String? _fontFamily;
  FontWeight? _fontWeight;
  double? _fontSize;
  FontStyle? _fontStyle;
  double? _letterSpacing;
  double? _lineHeight;
  List<TextSpan>? _textSpanChildren;
  TextStyle? _textStyle;
  TextStyle? _themedStyle;

  FxTextSpan tap(Function function) {
    final recognizer = TapGestureRecognizer()
      ..onTap = function as void Function()?;
    return this.._gestureRecognizer = recognizer;
  }

  FxTextSpan doubleTap(Function function) {
    final recognizer = DoubleTapGestureRecognizer()
      ..onDoubleTap = function as void Function()?;
    return this.._gestureRecognizer = recognizer;
  }

  FxTextSpan withChildren(List<TextSpan> children) {
    _textSpanChildren = children;
    return this;
  }

  @override
  FxTextSpan color(Color color) {
    flutterColor = color;
    return this;
  }

  FxTextSpan hexColor(String colorHex) =>
      this..flutterColor = Fx.hexToColor(colorHex);

  FxTextSpan fontFamily(String family) {
    _fontFamily = family;
    return this;
  }

  /// Use textStyle to provide custom or any theme style.
  FxTextSpan textStyle(TextStyle _style) {
    _themedStyle = _style;
    return this;
  }

  FxTextSpan size(double size) => this.._fontSize = size;

  FxTextSpan weight(FontWeight weight) =>
      _fontWeightedText(child: this, weight: weight);

  FxTextSpan spacing(double space) => this.._letterSpacing = space;

  FxTextSpan get bold =>
      _fontWeightedText(child: this, weight: FontWeight.bold);

  FxTextSpan get italic => this.._fontStyle = FontStyle.italic;

  FxTextSpan get underline => this.._decoration = TextDecoration.underline;

  FxTextSpan get lineThrough => this.._decoration = TextDecoration.lineThrough;

  FxTextSpan get overline => this.._decoration = TextDecoration.overline;

  FxTextSpan get uppercase => this.._text = _text.toUpperCase();

  FxTextSpan get lowercase => this.._text = _text.toLowerCase();

  FxTextSpan lineHeight(double value) => this.._lineHeight = value;

  FxTextSpan _fontWeightedText(
      {required FontWeight weight, required FxTextSpan child}) {
    _fontWeight = weight;
    return this;
  }

  @override
  TextSpan make({Key? key}) {
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
    return TextSpan(
      text: _text,
      recognizer: _gestureRecognizer,
      children: _textSpanChildren,
      style: _themedStyle?.merge(ts) ?? _textStyle?.merge(ts) ?? ts,
    );
  }
}

extension FxRichTextExtension on RichText {
  /// Get RichText Widget for the String
  FxRichText get richText =>
      FxRichText.existing((text as TextSpan).text!, text.style);
}

extension FxTextSpanExtension on TextSpan {
  /// Get TextSpan for the String
  FxTextSpan get textSpan => FxTextSpan(text!);
}
