// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:openquester/src/features/clicker/clicker_page.dart'
    deferred as _i1;
import 'package:openquester/src/features/home/home.dart' deferred as _i2;
import 'package:openquester/src/features/home_tabs/home_tabs.dart'
    deferred as _i3;
import 'package:openquester/src/features/package_upload/view/package_upload_screen.dart'
    deferred as _i4;
import 'package:openquester/src/features/packages/view/packages_list.dart'
    deferred as _i5;
import 'package:openquester/src/features/profile/view/profile_page.dart'
    deferred as _i6;
import 'package:openquester/src/features/test/test_screen.dart' deferred as _i7;

/// generated route for
/// [_i1.ClickerPage]
class ClickerRoute extends _i8.PageRouteInfo<void> {
  const ClickerRoute({List<_i8.PageRouteInfo>? children})
      : super(ClickerRoute.name, initialChildren: children);

  static const String name = 'ClickerRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return _i8.DeferredWidget(_i1.loadLibrary, () => _i1.ClickerPage());
    },
  );
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return _i8.DeferredWidget(_i2.loadLibrary, () => _i2.HomeScreen());
    },
  );
}

/// generated route for
/// [_i3.HomeTabsScreen]
class HomeTabsRoute extends _i8.PageRouteInfo<void> {
  const HomeTabsRoute({List<_i8.PageRouteInfo>? children})
      : super(HomeTabsRoute.name, initialChildren: children);

  static const String name = 'HomeTabsRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return _i8.DeferredWidget(_i3.loadLibrary, () => _i3.HomeTabsScreen());
    },
  );
}

/// generated route for
/// [_i4.PackageUploadScreen]
class PackageUploadRoute extends _i8.PageRouteInfo<void> {
  const PackageUploadRoute({List<_i8.PageRouteInfo>? children})
      : super(PackageUploadRoute.name, initialChildren: children);

  static const String name = 'PackageUploadRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return _i8.DeferredWidget(
        _i4.loadLibrary,
        () => _i4.PackageUploadScreen(),
      );
    },
  );
}

/// generated route for
/// [_i5.PackagesListScreen]
class PackagesListRoute extends _i8.PageRouteInfo<void> {
  const PackagesListRoute({List<_i8.PageRouteInfo>? children})
      : super(PackagesListRoute.name, initialChildren: children);

  static const String name = 'PackagesListRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return _i8.DeferredWidget(
        _i5.loadLibrary,
        () => _i5.PackagesListScreen(),
      );
    },
  );
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRoute extends _i8.PageRouteInfo<void> {
  const ProfileRoute({List<_i8.PageRouteInfo>? children})
      : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return _i8.DeferredWidget(_i6.loadLibrary, () => _i6.ProfilePage());
    },
  );
}

/// generated route for
/// [_i7.TestScreen]
class TestScreenRoute extends _i8.PageRouteInfo<void> {
  const TestScreenRoute({List<_i8.PageRouteInfo>? children})
      : super(TestScreenRoute.name, initialChildren: children);

  static const String name = 'TestScreenRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return _i8.DeferredWidget(_i7.loadLibrary, () => _i7.TestScreen());
    },
  );
}
