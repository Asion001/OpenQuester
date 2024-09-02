import 'package:auto_route/auto_route.dart';

import 'router.gr.dart';

@AutoRouterConfig(deferredLoading: true)
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true, children: homeTabs),
        AutoRoute(page: TestScreenRoute.page, path: '/test'),
      ];

  List<AutoRoute> get homeTabs => [
        AutoRoute(page: ClickerRoute.page, path: '/clicker'),
        AutoRoute(page: ProfileRoute.page, path: '/profile'),
        AutoRoute(page: TestScreenRoute.page, path: '/test'),
      ];
}
