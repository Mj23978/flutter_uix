import 'package:flutter/material.dart';

enum FxCurve {
  concave,
  convex,
  emboss,
  flat,
}

class FxNeumorph {
  final List<BoxShadow> shadows;
  final Gradient? gradient;

  FxNeumorph(this.shadows, this.gradient);
}
