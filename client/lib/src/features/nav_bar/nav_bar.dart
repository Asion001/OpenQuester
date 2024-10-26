import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:openquester/generated/locale_keys.g.dart';
import 'package:openquester/src/core/router.gr.dart';

@RoutePage()
class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (context, tabsRouter) {
        return AppBar();
      },
      routes: const [
        HomeRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
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
        icon: Icon(Icons.space_dashboard_outlined),
        selectedIcon: Icon(Icons.space_dashboard),
      ),
      NavigationDestination(
        label: LocaleKeys.home_tabs_profile.tr(),
        icon: Icon(Icons.person_outlined),
        selectedIcon: Icon(Icons.person),
      ),
    ];
  }
}
