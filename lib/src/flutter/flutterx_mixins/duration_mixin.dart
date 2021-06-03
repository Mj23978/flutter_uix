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

mixin FxDurationMixing<T> {
  T? _child;

  @protected
  Duration? flutterDuration;

  @protected
  void setChildForDuration(T child) {
    _child = child;
  }

  T? secs({required int sec}) {
    assert(sec != null);
    flutterDuration = Duration(seconds: sec);
    return _child;
  }

  T? milliSecs({required int milliSec}) {
    assert(milliSec != null);
    flutterDuration = Duration(milliseconds: milliSec);
    return _child;
  }

  T? minutes({required int mins}) {
    assert(mins != null);
    flutterDuration = Duration(minutes: mins);
    return _child;
  }

  T? hours({required int h}) {
    assert(h != null);
    flutterDuration = Duration(hours: h);
    return _child;
  }
}
