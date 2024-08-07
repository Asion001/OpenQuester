import 'package:flutter/material.dart';
import 'package:openquester/src/ui/applications/router.dart';

import 'theme.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'OpenQuester',
      theme: AppTheme.current,
      routerConfig: _appRouter.config(),
    );
  }
}
