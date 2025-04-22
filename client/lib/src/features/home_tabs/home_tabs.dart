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

class _MobileHome extends WatchingStatefulWidget {
  const _MobileHome();

  @override
  State<_MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<_MobileHome> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final authorized = watchIt<AuthController>().authorized;

    return Scaffold(
      appBar: _homeAppBar(
        title: _destionations[index].$2.label,
        context: context,
        authorized: authorized,
      ),
      body: _destionations[index].$1,
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (newIndex) => setState(() => index = newIndex),
        destinations: _destionations.map((e) => e.$2).toList(),
        height: 60,
      ),
    );
  }

  List<(Widget, NavigationDestination)> get _destionations {
    return [
      (
        const GamesListScreen(),
        NavigationDestination(
          label: LocaleKeys.home_tabs_games.tr(),
          icon: const Icon(Icons.games_outlined),
          selectedIcon: const Icon(Icons.games),
        ),
      ),
      (
        const PackagesListScreen(),
        NavigationDestination(
          label: LocaleKeys.home_tabs_packages.tr(),
          icon: const Icon(Icons.folder_outlined),
          selectedIcon: const Icon(Icons.folder),
        ),
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
        title: LocaleKeys.home_tabs_games.tr(),
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
