import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';
import 'package:toastification/toastification.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool loading = true;

  @override
  void initState() {
    super.initState();
    AppInit.buildInit().then((_) => setState(() => loading = false));
  }

  @override
  Widget build(BuildContext context) {
    const loader = Material();

    return ToastificationWrapper(
      config: getIt<ToastController>().config,
      child: MaterialApp.router(
        title: 'OpenQuester',
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        routerConfig: getIt<AppRouter>().config(
          deepLinkTransformer: getIt<AppRouter>().deepLinkTransformer,
        ),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          if (loading) return loader;
          return child ?? loader;
        },
      ),
    );
  }
}
