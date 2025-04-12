import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

@AutoRouterConfig(deferredLoading: true)
@singleton
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeTabsRoute.page, initial: true, children: homeTabs),
        AutoRoute(page: ClickerRoute.page, path: '/clicker'),
        AutoRoute(page: ProfileRoute.page, path: '/profile'),
        AutoRoute(page: TestScreenRoute.page, path: '/test'),
        AutoRoute(page: PackageUploadRoute.page, path: '/upload-package'),
        BlurDialogRoute<void>(
          page: GamePreviewRoute.page,
          path: '/game-preview',
        ),
        AutoRoute(page: GameLobbyRoute.page, path: '/game/:gameId'),
      ];

  List<AutoRoute> get homeTabs => [
        AutoRoute(page: GamesListRoute.page, path: 'games'),
        AutoRoute(page: PackagesListRoute.page, path: 'packages'),
      ];

  static AppRouter get I => getIt<AppRouter>();

  @override
  RouteType get defaultRouteType =>
      const RouteType.adaptive(enablePredictiveBackGesture: true);
}

class BlurDialogRoute<R> extends CustomRoute<R> {
  BlurDialogRoute({
    required super.page,
    super.path,
    super.children,
    super.allowSnapshotting,
    super.barrierDismissible,
    super.barrierLabel,
    super.customRouteBuilder,
    super.duration,
    super.fullMatch,
    super.guards,
    super.initial,
    super.keepHistory,
    super.maintainState,
    super.meta,
    super.restorationId,
    super.reverseDuration,
    super.title,
    super.usesPathAsKey,
  }) : super(
          transitionsBuilder: blurIn,
          barrierColor: Colors.black.withValues(alpha: .3),
          opaque: false,
          fullscreenDialog: true,
        );

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
