// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:openquester/src/features/clicker/clicker_page.dart'
    deferred as _i1;
import 'package:openquester/src/features/home/home_screen.dart'
    deferred as _i2;
import 'package:openquester/src/features/profile/profile_page.dart'
    deferred as _i3;
import 'package:openquester/src/features/test/test_screen.dart'
    deferred as _i4;

/// generated route for
/// [_i1.ClickerPage]
class ClickerRoute extends _i5.PageRouteInfo<void> {
  const ClickerRoute({List<_i5.PageRouteInfo>? children})
      : super(
          ClickerRoute.name,
          initialChildren: children,
        );

  static const String name = 'ClickerRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return _i5.DeferredWidget(
        _i1.loadLibrary,
        () => _i1.ClickerPage(),
      );
    },
  );
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return _i5.DeferredWidget(
        _i2.loadLibrary,
        () => _i2.HomeScreen(),
      );
    },
  );
}

/// generated route for
/// [_i3.ProfilePage]
class ProfileRoute extends _i5.PageRouteInfo<void> {
  const ProfileRoute({List<_i5.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return _i5.DeferredWidget(
        _i3.loadLibrary,
        () => _i3.ProfilePage(),
      );
    },
  );
}

/// generated route for
/// [_i4.TestScreen]
class TestScreenRoute extends _i5.PageRouteInfo<void> {
  const TestScreenRoute({List<_i5.PageRouteInfo>? children})
      : super(
          TestScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'TestScreenRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return _i5.DeferredWidget(
        _i4.loadLibrary,
        () => _i4.TestScreen(),
      );
    },
  );
}
