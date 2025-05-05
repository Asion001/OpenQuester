import 'package:flutter/material.dart';

class UiModeUtils {
  static bool wideModeOn(BuildContext context, [double? customWideModeWidth]) {
    final size = MediaQuery.sizeOf(context);
    return size.width > (customWideModeWidth ?? medium);
  }

  static const double extraLarge = 1600;
  static const double large = 1200;
  static const double medium = 600;

  static const double maximumDialogWidth = medium;
}
