import 'package:flutter/material.dart';

class UiModeUtils {
  static bool wideModeOn(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return size.width > wideModeWidth;
  }

  static const double maximumWidth = 1200;
  static const double wideModeWidth = 800;
}
