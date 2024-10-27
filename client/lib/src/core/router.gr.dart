// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:openquester/src/features/clicker/clicker_page.dart'
    deferred as _i1;
import 'package:openquester/src/features/home/home.dart' deferred as _i2;
import 'package:openquester/src/features/nav_bar/nav_bar.dart' deferred as _i3;
import 'package:openquester/src/features/profile/profile_page.dart'
    deferred as _i4;
import 'package:openquester/src/features/test/test_screen.dart' deferred as _i5;

/// generated route for
/// [_i1.ClickerPage]
class ClickerRoute extends _i6.PageRouteInfo<void> {
  const ClickerRoute({List<_i6.PageRouteInfo>? children})
      : super(
          ClickerRoute.name,
          initialChildren: children,
        );

  static const String name = 'ClickerRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return _i6.DeferredWidget(
        _i1.loadLibrary,
        () => _i1.ClickerPage(),
      );
    },
  );
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return _i6.DeferredWidget(
        _i2.loadLibrary,
        () => _i2.HomeScreen(),
      );
    },
  );
}

/// generated route for
/// [_i3.NavBar]
class NavBar extends _i6.PageRouteInfo<void> {
  const NavBar({List<_i6.PageRouteInfo>? children})
      : super(
          NavBar.name,
          initialChildren: children,
        );

  static const String name = 'NavBar';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return _i6.DeferredWidget(
        _i3.loadLibrary,
        () => _i3.NavBar(),
      );
    },
  );
}

/// generated route for
/// [_i4.ProfilePage]
class ProfileRoute extends _i6.PageRouteInfo<void> {
  const ProfileRoute({List<_i6.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return _i6.DeferredWidget(
        _i4.loadLibrary,
        () => _i4.ProfilePage(),
      );
    },
  );
}

/// generated route for
/// [_i5.TestScreen]
class TestScreenRoute extends _i6.PageRouteInfo<void> {
  const TestScreenRoute({List<_i6.PageRouteInfo>? children})
      : super(
          TestScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'TestScreenRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return _i6.DeferredWidget(
        _i5.loadLibrary,
        () => _i5.TestScreen(),
      );
    },
  );
}
