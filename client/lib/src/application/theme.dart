import 'package:flutter/material.dart';

class AppTheme {
  static final _defaultTheme = ThemeData.dark();
  static final _theme = _defaultTheme.copyWith(
    bottomNavigationBarTheme: _defaultTheme.bottomNavigationBarTheme.copyWith(
      type: BottomNavigationBarType.shifting,
      landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
      selectedItemColor: _defaultTheme.colorScheme.onPrimary,
      unselectedItemColor: _defaultTheme.colorScheme.primary,
    ),
  );
  static ThemeData get current => _theme;
}
