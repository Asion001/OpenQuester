import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

@RoutePage()
class HomeBuilderScreen extends StatelessWidget {
  const HomeBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isWideModeOn = UiModeUtils.wideModeOn(context);
    return AutoTabsScaffold(
      appBarBuilder: (context, tabsRouter) {
        return AppBar();
      },
      routes: const [
        HomeRoute(),
        PackagesListRoute(),
      ],
      bottomNavigationBuilder: isWideModeOn
          ? null
          : (_, tabsRouter) {
              return NavigationBar(
                selectedIndex: tabsRouter.activeIndex,
                onDestinationSelected: tabsRouter.setActiveIndex,
                destinations: _destionations,
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
