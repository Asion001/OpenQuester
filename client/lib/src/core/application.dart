import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:openquester/src/core/get_it.dart';
import 'package:openquester/src/core/router.dart';
import 'package:openquester/src/utils/request_ispector.dart';

import 'theme.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'OpenQuester',
      theme: AppTheme.current,
      routerConfig: getIt<AppRouter>().config(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      builder: (context, child) {
        return GestureDetector(
          onLongPress: alice.showInspector,
          child: child,
        );
      },
    );
  }
}
