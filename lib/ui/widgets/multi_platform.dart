import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MultiPlatform extends StatelessWidget {
  final WidgetBuilder androidStyle;
  final WidgetBuilder iosStyle;

  const MultiPlatform(
      {Key? key, required this.androidStyle, required this.iosStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return androidStyle(context);
      case TargetPlatform.iOS:
        return iosStyle(context);
      default:
        return androidStyle(context);
    }
  }
}
