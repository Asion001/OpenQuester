import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

@RoutePage()
class HomeTabsScreen extends StatelessWidget {
  const HomeTabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isWideModeOn = UiModeUtils.wideModeOn(context);
    return Scaffold(
      body: MaxSizeContainer(child: isWideModeOn ? _wideBody() : _mobileBody()),
    );
  }

  Widget _wideBody() {
    return Scaffold(
      appBar: homeAppBar(title: LocaleKeys.home_tabs_home.tr()),
      body: Row(
        children: [
          GamesList().expand(),
          PackagesListScreen().expand(),
        ],
      ),
    );
  }

  Widget _mobileBody() {
    return AutoTabsScaffold(
      appBarBuilder: (context, tabsRouter) {
        return homeAppBar(
          title: _destionations[tabsRouter.activeIndex].label,
        );
      },
      routes: const [
        HomeRoute(),
        PackagesListRoute(),
      ],
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
        icon: Icon(Icons.star_outline_rounded),
        selectedIcon: Icon(Icons.star_rounded),
      ),
      NavigationDestination(
        label: LocaleKeys.home_tabs_packages.tr(),
        icon: Icon(Icons.folder_outlined),
        selectedIcon: Icon(Icons.folder),
      ),
    ];
  }
}

AppBar homeAppBar({required String title}) {
  return AppBar(
    title: Text(title),
    leading: ProfileBtn(),
  );
}
