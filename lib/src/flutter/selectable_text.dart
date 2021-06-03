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
import 'package:flutter_uix/flutter_uix.dart';

import 'builder.dart';
import 'flutterx_mixins/color_mixin.dart';

@protected
class FxSelectableTextBuilder extends FxWidgetBuilder<SelectableText>
    with FxColorMixin<FxSelectableTextBuilder> {
  FxSelectableTextBuilder(this._text) : assert(_text != null) {
    setChildToColor(this);
  }

  FxSelectableTextBuilder.existing(this._text, this._textStyle)
      : assert(_text != null) {
    setChildToColor(this);
  }

  String _text;
  String? _fontFamily;
  FontWeight? _fontWeight;
  TextAlign? _textAlign;
  double? _fontSize;
  int? _maxLines;
  FontStyle? _fontStyle;
  TextStyle? _textStyle;
  double? _letterSpacing;
  double? _lineHeight;
  TextDecoration? _decoration;
  Function? _onTap;
  TextStyle? _themedStyle;

  FxSelectableTextBuilder selectableText(String text) {
    _text = text;
    return this;
  }

  @override
  FxSelectableTextBuilder color(Color color) {
    flutterColor = color;
    return this;
  }

  FxSelectableTextBuilder hexColor(String colorHex) =>
      this..flutterColor = Fx.hexToColor(colorHex);

  FxSelectableTextBuilder maxLines(int lines) {
    _maxLines = lines;
    return this;
  }

  FxSelectableTextBuilder fontFamily(String family) {
    _fontFamily = family;
    return this;
  }

  /// Use textStyle to provide custom or any theme style.
  FxSelectableTextBuilder textStyle(TextStyle _style) {
    _themedStyle = _style;
    return this;
  }

  FxSelectableTextBuilder textAlign(TextAlign textAlign) {
    _textAlign = textAlign;
    return this;
  }

  FxSelectableTextBuilder get center => this.._textAlign = TextAlign.center;

  FxSelectableTextBuilder size(double size) => this.._fontSize = size;

  FxSelectableTextBuilder weight(FontWeight weight) =>
      _fontWeightedText(child: this, weight: weight);

  FxSelectableTextBuilder spacing(double space) => this.._letterSpacing = space;

  FxSelectableTextBuilder get bold =>
      _fontWeightedText(child: this, weight: FontWeight.bold);

  FxSelectableTextBuilder get italic => this.._fontStyle = FontStyle.italic;

  FxSelectableTextBuilder get underline =>
      this.._decoration = TextDecoration.underline;

  FxSelectableTextBuilder get lineThrough =>
      this.._decoration = TextDecoration.lineThrough;

  FxSelectableTextBuilder get overline =>
      this.._decoration = TextDecoration.overline;

  FxSelectableTextBuilder get uppercase => this.._text = _text.toUpperCase();

  FxSelectableTextBuilder get lowercase => this.._text = _text.toLowerCase();

  FxSelectableTextBuilder lineHeight(double value) => this.._lineHeight = value;

  FxSelectableTextBuilder _fontWeightedText(
      {required FontWeight weight, required FxSelectableTextBuilder child}) {
    _fontWeight = weight;
    return this;
  }

  FxSelectableTextBuilder onTap(Function _tap) => this.._onTap = _tap;

  @override
  SelectableText make({Key? key}) {
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
    return SelectableText(_text,
        key: key,
        textAlign: _textAlign,
        maxLines: _maxLines,
        toolbarOptions: const ToolbarOptions(
            copy: true, cut: true, paste: true, selectAll: true),
        onTap: _onTap as void Function()?,
        enableInteractiveSelection: true,
        // showCursor: true,
        // ? Because not available in stable channel
        // textScaleFactor: _scaleFactor,
        style: _themedStyle?.merge(ts) ?? _textStyle?.merge(ts) ?? ts);
  }
}

extension SelectableTextExtensions on SelectableText {
  FxSelectableTextBuilder get selectableText =>
      FxSelectableTextBuilder.existing(data!, style);
}
