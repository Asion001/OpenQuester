import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

@AutoRouterConfig(deferredLoading: true)
@singleton
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeTabsRoute.page, initial: true, children: homeTabs),
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
        CustomRoute<void>(
          page: GamePreviewRoute.page,
          path: '/game-preview',
          fullscreenDialog: true,
          opaque: false,
          transitionsBuilder: blurIn,
          barrierColor: Colors.black.withValues(alpha: .3),
        ),
      ];

  List<AutoRoute> get homeTabs => [
        AutoRoute(page: GamesListRoute.page, path: 'games'),
        AutoRoute(page: PackagesListRoute.page, path: 'packages'),
      ];

  static AppRouter get I => getIt<AppRouter>();

  static Widget blurIn(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return AnimatedBuilder(
      animation: animation,
      child: child,
      builder: (context, child) {
        final sigma = animation.value * 2;
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: sigma, sigmaY: sigma),
          child: child,
        );
      },
    );
  }
}
