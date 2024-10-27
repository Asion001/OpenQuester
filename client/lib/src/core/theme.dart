import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static final _defaultTheme = ThemeData.dark();

  static ThemeData get _theme => _defaultTheme.copyWith(
        bottomNavigationBarTheme:
            _defaultTheme.bottomNavigationBarTheme.copyWith(
          type: BottomNavigationBarType.shifting,
          landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
          selectedItemColor: _defaultTheme.colorScheme.onPrimary,
          unselectedItemColor: _defaultTheme.colorScheme.primary,
        ),
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            systemNavigationBarColor:
                _defaultTheme.colorScheme.onSecondaryFixedVariant,
            systemNavigationBarDividerColor:
                _defaultTheme.colorScheme.onSecondary,
          ),
        ),
      );

  static ThemeData get current => _theme;
}
