import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import 'router.gr.dart';

@AutoRouterConfig(deferredLoading: true)
@Singleton()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: NavBar.page,
          initial: true,
          children: homeTabs,
        ),
      ];

  List<AutoRoute> get homeTabs => [
        AutoRoute(page: HomeRoute.page, path: 'home'),
        AutoRoute(page: ClickerRoute.page, path: 'clicker'),
        AutoRoute(page: ProfileRoute.page, path: 'profile'),
        AutoRoute(page: TestScreenRoute.page, path: 'test'),
      ];
}
