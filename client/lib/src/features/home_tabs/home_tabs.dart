import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

@RoutePage()
class HomeTabsScreen extends WatchingWidget {
  const HomeTabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isWideModeOn = UiModeUtils.wideModeOn(context);

    return Scaffold(
      body: MaxSizeContainer(
        child: isWideModeOn ? const _WideHome() : const _MobileHome(),
      ),
    );
  }
}

AppBar _homeAppBar({
  required BuildContext context,
  required String title,
  required bool authorized,
}) {
  return AppBar(
    title: Text(title),
    leading: const ProfileBtn(),
    actions: [
      if (authorized)
        IconButton(
          onPressed: () => const PackageUploadRoute().push<void>(context),
          icon: const Icon(Icons.upload),
        ),
    ],
  );
}

class _MobileHome extends WatchingWidget {
  const _MobileHome();

  @override
  Widget build(BuildContext context) {
    final authorized = watchIt<AuthController>().authorized;

    return AutoTabsScaffold(
      appBarBuilder: (context, tabsRouter) {
        return _homeAppBar(
          title: _destionations[tabsRouter.activeIndex].label,
          context: context,
          authorized: authorized,
        );
      },
      routes: const [GamesListRoute(), PackagesListRoute()],
      bottomNavigationBuilder: (_, tabsRouter) {
        return NavigationBar(
          selectedIndex: tabsRouter.activeIndex,
          onDestinationSelected: tabsRouter.setActiveIndex,
          destinations: _destionations,
          height: 60,
        );
      },
    );
  }

  List<NavigationDestination> get _destionations {
    return [
      NavigationDestination(
        label: LocaleKeys.home_tabs_home.tr(),
        icon: const Icon(Icons.star_outline_rounded),
        selectedIcon: const Icon(Icons.star_rounded),
      ),
      NavigationDestination(
        label: LocaleKeys.home_tabs_packages.tr(),
        icon: const Icon(Icons.folder_outlined),
        selectedIcon: const Icon(Icons.folder),
      ),
    ];
  }
}

class _WideHome extends WatchingWidget {
  const _WideHome();

  @override
  Widget build(BuildContext context) {
    final authorized = watchIt<AuthController>().authorized;
    return Scaffold(
      appBar: _homeAppBar(
        title: LocaleKeys.home_tabs_home.tr(),
        context: context,
        authorized: authorized,
      ),
      body: Row(
        children: [
          const GamesListScreen().expand(),
          const PackagesListScreen().expand(),
        ],
      ),
    );
  }
}
