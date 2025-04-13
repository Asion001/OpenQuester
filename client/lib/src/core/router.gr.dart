// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:openquester/openquester.dart' as _i12;
import 'package:openquester/src/features/clicker/clicker_page.dart'
    deferred as _i1;
import 'package:openquester/src/features/game_lobby/view/game_lobby_screen.dart'
    deferred as _i2;
import 'package:openquester/src/features/game_preview/view/game_preview.dart'
    as _i3;
import 'package:openquester/src/features/games/view/games_list.dart'
    deferred as _i4;
import 'package:openquester/src/features/home_tabs/home_tabs.dart'
    deferred as _i5;
import 'package:openquester/src/features/package_upload/view/package_upload_screen.dart'
    deferred as _i6;
import 'package:openquester/src/features/packages/view/packages_list.dart'
    deferred as _i7;
import 'package:openquester/src/features/profile/view/profile_page.dart'
    deferred as _i8;
import 'package:openquester/src/features/test/test_screen.dart' deferred as _i9;

/// generated route for
/// [_i1.ClickerPage]
class ClickerRoute extends _i10.PageRouteInfo<void> {
  const ClickerRoute({List<_i10.PageRouteInfo>? children})
      : super(ClickerRoute.name, initialChildren: children);

  static const String name = 'ClickerRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return _i10.DeferredWidget(_i1.loadLibrary, () => _i1.ClickerPage());
    },
  );
}

/// generated route for
/// [_i2.GameLobbyScreen]
class GameLobbyRoute extends _i10.PageRouteInfo<GameLobbyRouteArgs> {
  GameLobbyRoute({
    required String gameId,
    _i11.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          GameLobbyRoute.name,
          args: GameLobbyRouteArgs(gameId: gameId, key: key),
          rawPathParams: {'gameId': gameId},
          initialChildren: children,
        );

  static const String name = 'GameLobbyRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<GameLobbyRouteArgs>(
        orElse: () =>
            GameLobbyRouteArgs(gameId: pathParams.getString('gameId')),
      );
      return _i10.DeferredWidget(
        _i2.loadLibrary,
        () => _i2.GameLobbyScreen(gameId: args.gameId, key: args.key),
      );
    },
  );
}

class GameLobbyRouteArgs {
  const GameLobbyRouteArgs({required this.gameId, this.key});

  final String gameId;

  final _i11.Key? key;

  @override
  String toString() {
    return 'GameLobbyRouteArgs{gameId: $gameId, key: $key}';
  }
}

/// generated route for
/// [_i3.GamePreviewScreen]
class GamePreviewRoute extends _i10.PageRouteInfo<GamePreviewRouteArgs> {
  GamePreviewRoute({
    required String gameId,
    _i12.GameListItem? item,
    _i11.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          GamePreviewRoute.name,
          args: GamePreviewRouteArgs(gameId: gameId, item: item, key: key),
          rawPathParams: {'gameId': gameId},
          initialChildren: children,
        );

  static const String name = 'GamePreviewRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<GamePreviewRouteArgs>(
        orElse: () =>
            GamePreviewRouteArgs(gameId: pathParams.getString('gameId')),
      );
      return _i3.GamePreviewScreen(
        gameId: args.gameId,
        item: args.item,
        key: args.key,
      );
    },
  );
}

class GamePreviewRouteArgs {
  const GamePreviewRouteArgs({required this.gameId, this.item, this.key});

  final String gameId;

  final _i12.GameListItem? item;

  final _i11.Key? key;

  @override
  String toString() {
    return 'GamePreviewRouteArgs{gameId: $gameId, item: $item, key: $key}';
  }
}

/// generated route for
/// [_i4.GamesListScreen]
class GamesListRoute extends _i10.PageRouteInfo<void> {
  const GamesListRoute({List<_i10.PageRouteInfo>? children})
      : super(GamesListRoute.name, initialChildren: children);

  static const String name = 'GamesListRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return _i10.DeferredWidget(_i4.loadLibrary, () => _i4.GamesListScreen());
    },
  );
}

/// generated route for
/// [_i5.HomeTabsScreen]
class HomeTabsRoute extends _i10.PageRouteInfo<void> {
  const HomeTabsRoute({List<_i10.PageRouteInfo>? children})
      : super(HomeTabsRoute.name, initialChildren: children);

  static const String name = 'HomeTabsRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return _i10.DeferredWidget(_i5.loadLibrary, () => _i5.HomeTabsScreen());
    },
  );
}

/// generated route for
/// [_i6.PackageUploadScreen]
class PackageUploadRoute extends _i10.PageRouteInfo<void> {
  const PackageUploadRoute({List<_i10.PageRouteInfo>? children})
      : super(PackageUploadRoute.name, initialChildren: children);

  static const String name = 'PackageUploadRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return _i10.DeferredWidget(
        _i6.loadLibrary,
        () => _i6.PackageUploadScreen(),
      );
    },
  );
}

/// generated route for
/// [_i7.PackagesListScreen]
class PackagesListRoute extends _i10.PageRouteInfo<void> {
  const PackagesListRoute({List<_i10.PageRouteInfo>? children})
      : super(PackagesListRoute.name, initialChildren: children);

  static const String name = 'PackagesListRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return _i10.DeferredWidget(
        _i7.loadLibrary,
        () => _i7.PackagesListScreen(),
      );
    },
  );
}

/// generated route for
/// [_i8.ProfileScreen]
class ProfileRoute extends _i10.PageRouteInfo<void> {
  const ProfileRoute({List<_i10.PageRouteInfo>? children})
      : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return _i10.DeferredWidget(_i8.loadLibrary, () => _i8.ProfileScreen());
    },
  );
}

/// generated route for
/// [_i9.TestScreen]
class TestScreenRoute extends _i10.PageRouteInfo<void> {
  const TestScreenRoute({List<_i10.PageRouteInfo>? children})
      : super(TestScreenRoute.name, initialChildren: children);

  static const String name = 'TestScreenRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return _i10.DeferredWidget(_i9.loadLibrary, () => _i9.TestScreen());
    },
  );
}
