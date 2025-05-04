import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:openquester/common_imports.dart';

class AppTheme {
  static ThemeData change(ThemeData theme) {
    return theme.copyWith(
      bottomNavigationBarTheme: theme.bottomNavigationBarTheme.copyWith(
        type: BottomNavigationBarType.shifting,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        selectedItemColor: theme.colorScheme.onPrimary,
        unselectedItemColor: theme.colorScheme.primary,
      ),
      appBarTheme: appBarTheme(theme),
      pageTransitionsTheme: pageTransitionsTheme,
      inputDecorationTheme: inputDecorationTheme,
      tooltipTheme: tooltipTheme,
    );
  }

  static AppBarTheme appBarTheme(ThemeData theme) {
    return AppBarTheme(
      systemOverlayStyle: systemOverlay(theme),
      centerTitle: true,
      actionsPadding: 8.right,
    );
  }

  static TooltipThemeData get tooltipTheme {
    return const TooltipThemeData(
      waitDuration: Duration(seconds: 1),
    );
  }

  static InputDecorationTheme get inputDecorationTheme {
    return const InputDecorationTheme(
      border: OutlineInputBorder(),
    );
  }

  static PageTransitionsTheme get pageTransitionsTheme {
    return const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        // Set the predictive back transitions for Android.
        TargetPlatform.android: PredictiveBackPageTransitionsBuilder(),
      },
    );
  }

  static SystemUiOverlayStyle systemOverlay(ThemeData theme) {
    return SystemUiOverlayStyle(
      systemNavigationBarColor: theme.colorScheme.surfaceContainer,
      systemNavigationBarDividerColor: theme.colorScheme.surfaceContainer,
    );
  }

  static const Color successColor = Color(0xFF7CE883);
  static const Color warningColor = Color(0xFFFFE078);

  static ThemeData get light => change(ThemeData.light());
  static ThemeData get dark => change(ThemeData.dark());
}
