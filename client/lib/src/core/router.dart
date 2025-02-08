import 'package:openquester/common_imports.dart';

@AutoRouterConfig(deferredLoading: true)
@singleton
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeTabsRoute.page,
          initial: true,
          children: homeTabs,
        ),
        AutoRoute(
          page: ClickerRoute.page,
          path: '/clicker',
          fullscreenDialog: true,
        ),
        AutoRoute(
          page: ProfileRoute.page,
          path: '/profile',
          fullscreenDialog: true,
        ),
        AutoRoute(
          page: TestScreenRoute.page,
          path: '/test',
          fullscreenDialog: true,
        ),
        AutoRoute(
          page: PackageUploadRoute.page,
          path: '/upload-package',
          fullscreenDialog: true,
        ),
      ];

  List<AutoRoute> get homeTabs => [
        AutoRoute(page: HomeRoute.page, path: 'home'),
        AutoRoute(page: PackagesListRoute.page, path: 'packages'),
      ];

  static AppRouter get I => getIt<AppRouter>();
}
