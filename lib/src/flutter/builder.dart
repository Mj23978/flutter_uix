import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

abstract class FxWidgetBuilder<T extends Widget> {
  T make({Key? key});
}

abstract class FxWidgetContextBuilder<T extends Widget> {
  T make(BuildContext context, {Key? key});
}

abstract class FxTextSpanBuilder<TextSpan> {
  TextSpan make({Key? key});
}
