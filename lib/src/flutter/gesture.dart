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

class _FxGestureBuilder extends FxWidgetBuilder<Widget> {
  _FxGestureBuilder(this._child, Function this._onTap) : assert(_onTap != null);
  _FxGestureBuilder.doubleTap(this._child, Function this._onDoubleTap)
      : assert(_child != null),
        assert(_onDoubleTap != null);
  _FxGestureBuilder.longTap(this._child, Function this._onLongTap)
      : assert(_child != null),
        assert(_onLongTap != null);

  final Widget _child;
  Function? _onTap;
  Function? _onDoubleTap;
  Function? _onLongTap;

  _FxGestureBuilder doubleTap({required Function onDoubleTap}) =>
      this.._onDoubleTap = onDoubleTap;

  _FxGestureBuilder longTap({required Function onLongTap}) =>
      this.._onLongTap = onLongTap;

  @override
  Widget make({Key? key}) {
    return GestureDetector(
      key: key,
      onTap: _onTap as void Function()?,
      child: _child,
      onDoubleTap: _onDoubleTap as void Function()?,
      onLongPress: _onLongTap as void Function()?,
    );
  }
}

class _FxInkWellBuilder extends FxWidgetBuilder<Widget> {
  _FxInkWellBuilder(this._child, this._onTap);
  _FxInkWellBuilder.mdDoubleTap(this._child, this._onDoubleTap);
  _FxInkWellBuilder.mdLongTap(this._child, this._onLongTap);

  final Widget _child;
  Function? _onTap;
  Function? _onDoubleTap;
  Function? _onLongTap;
  Color? _splashColor;

  _FxInkWellBuilder splashColor(Color color) => this.._splashColor = color;

  _FxInkWellBuilder mdDoubleTap({required Function onDoubleTap}) =>
      this.._onDoubleTap = onDoubleTap;

  _FxInkWellBuilder mdLongTap({required Function onLongTap}) =>
      this.._onLongTap = onLongTap;

  @override
  Widget make({Key? key}) {
    return InkWell(
      key: key,
      onTap: _onTap as void Function()?,
      child: _child,
      splashColor: _splashColor,
      onDoubleTap: _onDoubleTap as void Function()?,
      onLongPress: _onLongTap as void Function()?,
    );
  }
}

extension GestureExtensions on Widget {
  _FxGestureBuilder tap(Function onTap) => _FxGestureBuilder(this, onTap);
  _FxGestureBuilder doubleTap(Function onTap) =>
      _FxGestureBuilder.doubleTap(this, onTap);
  _FxGestureBuilder longTap(Function onTap) =>
      _FxGestureBuilder.longTap(this, onTap);

  _FxInkWellBuilder inkTap(Function onTap) => _FxInkWellBuilder(this, onTap);
  _FxInkWellBuilder inkDoubleTap(Function onTap) =>
      _FxInkWellBuilder.mdDoubleTap(this, onTap);
  _FxInkWellBuilder inkLongTap(Function onTap) =>
      _FxInkWellBuilder.mdLongTap(this, onTap);
}
