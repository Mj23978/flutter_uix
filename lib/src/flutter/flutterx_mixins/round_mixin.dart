import 'package:flutter/material.dart';

mixin FxRoundMixin<T> {
  T? _childToRound;

  @protected
  late double roundedValue;

  T? get roundedNone {
    roundedValue = 0.0;
    return _childToRound;
  }

  T? get roundedFull {
    roundedValue = double.infinity;
    return _childToRound;
  }

  T? withRounded([double value = 12.0]) {
    roundedValue = value;
    return _childToRound;
  }

  @protected
  void setChildToRound(T child) {
    _childToRound = child;
  }
}
