import 'package:flutter/material.dart';

class UiModeUtils {
  static bool wideModeOn(
    BuildContext context, [
    double width = UiModeUtils.medium,
  ]) {
    final size = MediaQuery.sizeOf(context);
    return size.width > width;
  }

  static const double extraLarge = 1600;
  static const double large = 1200;
  static const double medium = 600;

  static const double maximumDialogWidth = medium;
}
