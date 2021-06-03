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

extension TransformExtension on Widget {
  Widget perspective({Key? key}) => Transform(
        key: key,
        transform: Matrix4.identity()..setEntry(3, 2, 0.001),
        child: this,
      );

  Widget rotate(double angle, {Key? key}) => Transform.rotate(
        key: key,
        angle: angle,
        child: this,
      );

  Widget scale(double scale, {Key? key}) => Transform.scale(
        key: key,
        scale: scale,
        child: this,
      );

  Widget translate({double dx = 0.0, double dy = 0.0, Key? key}) =>
      Transform.translate(
        key: key,
        offset: Offset(dx, dy),
        child: this,
      );
}
