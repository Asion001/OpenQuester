import 'package:flutter/material.dart';

class UiModeUtils {
  static bool wideModeOn(BuildContext context, [double? customWideModeWidth]) {
    final size = MediaQuery.sizeOf(context);
    return size.width > (customWideModeWidth ?? wideModeWidth);
  }

  static const double maximumWidth = 1200;
  static const double wideModeWidth = 600;
  static const double maximumDialogWidth = wideModeWidth;
}
