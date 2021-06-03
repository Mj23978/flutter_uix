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
import '../flutter_uix.dart';

import 'flutter/rich_text.dart';
import 'flutter/selectable_text.dart';
import 'flutter/text.dart';
import 'responsive_ui.dart';

class VelocityXExtensions {}

/// Extension Methods & Widgets for the strings

extension StringExtension on String {
  ///Returns first letter of the string as Caps eg -> Flutter
  String firstLetterUpperCase() => length > 1
      ? "${this[0].toUpperCase()}${substring(1).toLowerCase()}"
      : this;

  ///Removes first element
  String get eliminateFirst => "${substring(1, length)}";

  bool isEmail() => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(this);

// if the string is empty perform an action
  String? ifEmpty(Function action) => isEmpty ? action() : this;

  /// Returns a String without white space at all
  /// "hello world" // helloworld
  String removeWhiteSpaces() => replaceAll(RegExp(r"\s+\b|\b\s"), "");

  /// Returns true if s is neither null, empty nor is solely made of whitespace characters.
  bool get isNotBlank => trim().isNotEmpty;

  ///
  /// Replaces chars of the given String [s] with [replace].
  ///
  /// The default value of [replace] is *.
  /// [begin] determines the start of the 'replacing'. If [begin] is null, it starts from index 0.
  /// [end] defines the end of the 'replacing'. If [end] is null, it ends at [s] length divided by 2.
  /// If [s] is empty or consists of only 1 char, the method returns null.
  ///
  /// Example :
  /// 1234567890 => *****67890
  /// 1234567890 with begin 2 and end 6 => 12****7890
  /// 1234567890 with begin 1 => 1****67890
  ///
  String? hidePartial({int begin = 0, int? end, String replace = '*'}) {
    final buffer = StringBuffer();
    if (length <= 1) {
      return null;
    }
    if (end == null) {
      end = (length / 2).round();
    } else {
      if (end > length) {
        end = length;
      }
    }
    for (var i = 0; i < length; i++) {
      if (i >= end) {
        buffer.write(String.fromCharCode(runes.elementAt(i)));
        continue;
      }
      if (i >= begin) {
        buffer.write(replace);
        continue;
      }
      buffer.write(String.fromCharCode(runes.elementAt(i)));
    }
    return buffer.toString();
  }

  ///Capitalize all words inside a string
  String allWordsCapitilize() {
    return toLowerCase().split(' ').map((word) {
      final String leftText =
          (word.length > 1) ? word.substring(1, word.length) : '';
      return word[0].toUpperCase() + leftText;
    }).join(' ');
  }

  /// Get Text Widget for the String
  FxTextBuilder get text => FxTextBuilder(this);

  /// Get SelectableText Widget for the String
  FxSelectableTextBuilder get selectableText => FxSelectableTextBuilder(this);

  /// Get TextSpan for the String
  FxTextSpan get textSpan => FxTextSpan(this);

  /// Get RichText Widget for the String
  FxRichText get richText => FxRichText(this);
}

/// Extension Methods & Widgets for the numbers
extension NumExtension on num {
  String toDoubleStringAsFixed({int digit = 2}) =>
      toStringAsFixed(truncateToDouble() == this ? 0 : digit);

  /// Returns number of digits in this number
  int get numberOfDigits => toString().length;

  /// Returns if the number is even
  bool get isEven => this % 2 == 0;

  /// Returns if the number is odd
  bool get isOdd => this % 2 != 0;

  /// Returns if the number is positive
  bool get isPositive => this > 0;

  /// Returns if the number is negative
  bool get isNegative => this < 0;

  ///Widgets
  Widget get widthBox => SizedBox(
        width: toDouble(),
      );
  Widget get heightBox => SizedBox(
        height: toDouble(),
      );

  Widget get squareBox => SizedBox(
        height: toDouble(),
        width: toDouble(),
      );

  /// Get Text Widget for the String
  FxTextBuilder get text => FxTextBuilder(toString());
}

extension ListWidgetExtension on List<Widget> {
  Widget column(
          {Key? key,
          MainAxisAlignment? alignment,
          CrossAxisAlignment? crossAlignment,
          MainAxisSize? axisSize}) =>
      FxColumn(
        this,
        key: key,
        alignment: alignment,
        axisSize: axisSize,
        crossAlignment: crossAlignment,
      );
  Widget row(
          {Key? key,
          MainAxisAlignment? alignment,
          CrossAxisAlignment? crossAlignment,
          MainAxisSize? axisSize}) =>
      FxRow(
        this,
        key: key,
        alignment: alignment,
        axisSize: axisSize,
        crossAlignment: crossAlignment,
      );
  Widget stack(
          {Key? key,
          AlignmentGeometry? alignment,
          StackFit? fit}) =>
      FxStack(
        this,
        key: key,
        alignment: alignment,
        fit: fit,
      );
}

extension ContextExtensions on BuildContext {
  MaterialResponsiveUiData get _mdResponsive =>
      MaterialResponsiveUiData.of(this);

  /// Screen Sizes Extensions for responsive UI
  int get mdColumns => _mdResponsive.columns;
  double get mdGutter => _mdResponsive.gutter;
  MobileDeviceType get mdDeviceType => _mdResponsive.deviceInfo.deviceType;
  MobileDeviceSize get mdDeviceSize => _mdResponsive.deviceInfo.deviceSize;
  MobileWindowSize get mdWindowSize => _mdResponsive.windowSize;

  MediaQueryData get mq => MediaQuery.of(this);
  double get screenWidth => mq.size.width;
  double get screenHeight => mq.size.height;
  double get percentWidth => screenWidth / 100;
  double get percentHeight => screenHeight / 100;
  double get _safeAreaHorizontal => mq.padding.left + mq.padding.right;
  double get _safeAreaVertical => mq.padding.top + mq.padding.bottom;
  double get safePercentWidth => (screenWidth - _safeAreaHorizontal) / 100;
  double get safePercentHeight => (screenHeight - _safeAreaVertical) / 100;

  /// Returns if Orientation is landscape
  bool get isLandscape => mq.orientation == Orientation.landscape;

  /// Extension for getting NavigatorSatte
  NavigatorState get nav => Navigator.of(this);

  /// Extension for getting textTheme
  TextTheme get textTheme => Theme.of(this).textTheme;
}
