import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

@AutoRouterConfig(
  deferredLoading: true,
  replaceInRouteName: 'Dialog|Page|Screen,Route',
)
@singleton
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(page: HomeTabsRoute.page, path: '/', initial: true),
      AutoRoute(page: ProfileRoute.page, path: '/profile'),
      BlurDialogRoute<void>(page: CreateGameRoute.page, path: '/games/create'),
      BlurDialogRoute<void>(
        page: GamePreviewRoute.page,
        path: '/games/:gameId/preview',
      ),
      AutoRoute(page: GameLobbyRoute.page, path: '/games/:gameId'),
      AutoRoute(page: ClickerRoute.page, path: '/clicker'),
      AutoRoute(page: TestScreenRoute.page, path: '/test'),
    ];
  }

  static AppRouter get I => getIt<AppRouter>();

  @override
  RouteType get defaultRouteType =>
      const RouteType.adaptive(enablePredictiveBackGesture: true);

  Future<Uri> deepLinkTransformer(Uri uri) async {
    // Make home screen behind any page from deep link
    Future.delayed(
      Duration.zero,
      () => getIt<AppRouter>().pushPath(uri.path),
    );
    return Uri(path: '/');
  }
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
