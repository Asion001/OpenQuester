import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import 'router.gr.dart';

@AutoRouterConfig(deferredLoading: true)
@Singleton()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeBuilderRoute.page,
          initial: true,
          children: homeTabs,
        ),
        AutoRoute(page: ClickerRoute.page, path: '/clicker'),
        AutoRoute(page: ProfileRoute.page, path: '/profile'),
        AutoRoute(page: TestScreenRoute.page, path: '/test'),
      ];

  List<AutoRoute> get homeTabs => [
        AutoRoute(page: HomeRoute.page, path: 'home'),
        AutoRoute(page: PackagesListRoute.page, path: 'packages'),
      ];
}
