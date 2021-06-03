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
import 'package:flutter_uix/flutter_uix.dart';

mixin FxColorMixin<T> {
  T? _childToColor;

  @protected
  Color? flutterColor;

  @protected
  void setChildToColor(T child) {
    _childToColor = child;
  }

  T? get white => _colorIt(child: _childToColor, color: Fx.white);
  T? get black => _colorIt(child: _childToColor, color: Fx.black);

  T? gray(int shade) {
    return _colorIt(child: _childToColor, color: Fx.gray(shade));
  }

  T? red(int shade) {
    return _colorIt(child: _childToColor, color: Fx.red(shade));
  }

  T? orange(int shade) {
    return _colorIt(child: _childToColor, color: Fx.orange(shade));
  }

  T? yellow(int shade) {
    return _colorIt(child: _childToColor, color: Fx.yellow(shade));
  }

  T? green(int shade) {
    return _colorIt(child: _childToColor, color: Fx.green(shade));
  }

  T? teal(int shade) {
    return _colorIt(child: _childToColor, color: Fx.teal(shade));
  }

  T? blue(int shade) {
    return _colorIt(child: _childToColor, color: Fx.blue(shade));
  }

  T? indigo(int shade) {
    return _colorIt(child: _childToColor, color: Fx.indigo(shade));
  }

  T? purple(int shade) {
    return _colorIt(child: _childToColor, color: Fx.purple(shade));
  }

  T? pink(int shade) {
    return _colorIt(child: _childToColor, color: Fx.pink(shade));
  }

  T? color(Color color) {
    return _colorIt(child: _childToColor, color: color);
  }

  T? get transparent {
    flutterColor = Colors.transparent;
    return _childToColor;
  }

  T? _colorIt({required Color color, required T? child}) {
    flutterColor = color;
    return child;
  }
}
