// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i11;
import 'package:openquester/openquester.dart' as _i10;
import 'package:openquester/src/features/clicker/clicker_page.dart'
    deferred as _i1;
import 'package:openquester/src/features/game/view/game_preview.dart' as _i2;
import 'package:openquester/src/features/games/view/games_list.dart'
    deferred as _i3;
import 'package:openquester/src/features/home_tabs/home_tabs.dart'
    deferred as _i4;
import 'package:openquester/src/features/package_upload/view/package_upload_screen.dart'
    deferred as _i5;
import 'package:openquester/src/features/packages/view/packages_list.dart'
    deferred as _i6;
import 'package:openquester/src/features/profile/view/profile_page.dart'
    deferred as _i7;
import 'package:openquester/src/features/test/test_screen.dart' deferred as _i8;

/// generated route for
/// [_i1.ClickerPage]
class ClickerRoute extends _i9.PageRouteInfo<void> {
  const ClickerRoute({List<_i9.PageRouteInfo>? children})
      : super(ClickerRoute.name, initialChildren: children);

  static const String name = 'ClickerRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return _i9.DeferredWidget(_i1.loadLibrary, () => _i1.ClickerPage());
    },
  );
}

/// generated route for
/// [_i2.GamePreviewScreen]
class GamePreviewRoute extends _i9.PageRouteInfo<GamePreviewRouteArgs> {
  GamePreviewRoute({
    required _i10.GameListItem item,
    _i11.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          GamePreviewRoute.name,
          args: GamePreviewRouteArgs(item: item, key: key),
          initialChildren: children,
        );

  static const String name = 'GamePreviewRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<GamePreviewRouteArgs>();
      return _i2.GamePreviewScreen(item: args.item, key: args.key);
    },
  );
}

class GamePreviewRouteArgs {
  const GamePreviewRouteArgs({required this.item, this.key});

  final _i10.GameListItem item;

  final _i11.Key? key;

  @override
  String toString() {
    return 'GamePreviewRouteArgs{item: $item, key: $key}';
  }
}

/// generated route for
/// [_i3.GamesListScreen]
class GamesListRoute extends _i9.PageRouteInfo<void> {
  const GamesListRoute({List<_i9.PageRouteInfo>? children})
      : super(GamesListRoute.name, initialChildren: children);

  static const String name = 'GamesListRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return _i9.DeferredWidget(_i3.loadLibrary, () => _i3.GamesListScreen());
    },
  );
}

/// generated route for
/// [_i4.HomeTabsScreen]
class HomeTabsRoute extends _i9.PageRouteInfo<void> {
  const HomeTabsRoute({List<_i9.PageRouteInfo>? children})
      : super(HomeTabsRoute.name, initialChildren: children);

  static const String name = 'HomeTabsRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return _i9.DeferredWidget(_i4.loadLibrary, () => _i4.HomeTabsScreen());
    },
  );
}

/// generated route for
/// [_i5.PackageUploadScreen]
class PackageUploadRoute extends _i9.PageRouteInfo<void> {
  const PackageUploadRoute({List<_i9.PageRouteInfo>? children})
      : super(PackageUploadRoute.name, initialChildren: children);

  static const String name = 'PackageUploadRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return _i9.DeferredWidget(
        _i5.loadLibrary,
        () => _i5.PackageUploadScreen(),
      );
    },
  );
}

/// generated route for
/// [_i6.PackagesListScreen]
class PackagesListRoute extends _i9.PageRouteInfo<void> {
  const PackagesListRoute({List<_i9.PageRouteInfo>? children})
      : super(PackagesListRoute.name, initialChildren: children);

  static const String name = 'PackagesListRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return _i9.DeferredWidget(
        _i6.loadLibrary,
        () => _i6.PackagesListScreen(),
      );
    },
  );
}

/// generated route for
/// [_i7.ProfilePage]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute({List<_i9.PageRouteInfo>? children})
      : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return _i9.DeferredWidget(_i7.loadLibrary, () => _i7.ProfilePage());
    },
  );
}

/// generated route for
/// [_i8.TestScreen]
class TestScreenRoute extends _i9.PageRouteInfo<void> {
  const TestScreenRoute({List<_i9.PageRouteInfo>? children})
      : super(TestScreenRoute.name, initialChildren: children);

  static const String name = 'TestScreenRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return _i9.DeferredWidget(_i8.loadLibrary, () => _i8.TestScreen());
    },
  );
}
