import 'package:flutter/material.dart';
import 'package:flutter_uix/flutter_uix.dart';

import 'flutter_conditional.dart';

/// FxDevice widget can be used for making responsive apps based on if it's mobile or web.
/// In case, if you want more options based on window size, use [FxResponsive].
/// You can specify two widgets depends on the screen size  [mobile] and [web].
/// They must not be null.
class FxDevice extends StatelessWidget {
  final Widget mobile;
  final Widget web;

  const FxDevice({Key? key, required this.mobile, required this.web})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FxConditionalSwitch.single(
      context: context,
      valueBuilder: (context) => context.mdWindowSize,
      caseBuilders: {MobileWindowSize.mobile: (context) => mobile},
      fallbackBuilder: (context) => web,
    )!;
  }
}

/// VelocityResponsive widget can be used for making responsive apps based on different window sizes.
/// You can specify multiple widgets depends on the screen size like [xsmall], [small], [medium],[large],
/// and [xlarge]. The [fallback] must not be null. It will be replaced if you don't specity any above widget.
class FxResponsive extends StatelessWidget {
  final Widget? watch;
  final Widget? mobile;
  final Widget? tablet;
  final Widget? web;
  final Widget? desktop;
  final Widget? tv;
  final Widget? fallback;

  const FxResponsive({
    Key? key,
    this.watch,
    this.mobile,
    this.tablet,
    this.web,
    this.desktop,
    this.tv,
    this.fallback,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FxConditionalSwitch.single(
      context: context,
      valueBuilder: (context) => context.mdWindowSize,
      caseBuilders: {
        MobileWindowSize.watch: (context) => watch ?? fallback,
        MobileWindowSize.mobile: (context) => mobile ?? fallback,
        MobileWindowSize.tablet: (context) => tablet ?? fallback,
        MobileWindowSize.web: (context) => web ?? fallback,
        MobileWindowSize.desktop: (context) => desktop ?? fallback,
        MobileWindowSize.tv: (context) => tv ?? fallback,
      },
      fallbackBuilder: (context) => fallback,
    )!;
  }
}
