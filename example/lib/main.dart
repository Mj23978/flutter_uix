import 'package:flutter/material.dart';
import 'package:flutter_uix/flutter_uix.dart';

void main() => runApp(MaterialApp(
      home: Demo(),
      debugShowCheckedModeBanner: false,
    ));

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Fx.teal(500),
      child: FxColumn(
        [
          FxDevice(
              mobile: "Mobile"
                  .text
                  .size(12)
                  .textStyle(context.textTheme.caption)
                  .italic
                  .center
                  .make()
                  .centered()
                  .box
                  .circle
                  .teal(500)
                  .neumorphic()
                  .make()
                  .whHalf(context),
              web: "Web"
                  .text
                  .white
                  .size(16)
                  .bold
                  .center
                  .makeCentered()
                  .animatedBox
                  .curve(Curves.bounceIn)
                  .withRounded(double.infinity)
                  .teal(500)
                  .neumorphic()
                  .make()
                  .whHalf(context)),
          20.heightBox,
          "Velocity"
              .richText
              .withTextSpanChildren(["X".textSpan.red(400).make()])
              .size(16)
              .white
              .make()
        ],
        alignment: MainAxisAlignment.center,
        crossAlignment: CrossAxisAlignment.center,
      ).p(16).scrollVertical(),
    );
  }
}
