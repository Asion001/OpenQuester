import 'package:auto_route/auto_route.dart';

import 'router.gr.dart';

@AutoRouterConfig(deferredLoading: true)
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          children: homeTabs,
        ),
      ];
  List<AutoRoute> get homeTabs => [
        AutoRoute(page: ClickerRoute.page),
        AutoRoute(page: ProfileRoute.page),
      ];
}
