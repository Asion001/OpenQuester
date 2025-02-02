import 'package:flutter/material.dart';

class UiModeUtils {
  static bool wideModeOn(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return size.width > wideModeWidth;
  }

  static const double maximumWidth = wideModeWidth;
  static const double wideModeWidth = 800;
}
