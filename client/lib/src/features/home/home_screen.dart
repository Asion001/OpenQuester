import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:openquester/src/application/router.gr.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        ClickerRoute(),
        ProfileRoute(),
        TestScreenRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return NavigationBar(
          selectedIndex: tabsRouter.activeIndex,
          onDestinationSelected: tabsRouter.setActiveIndex,
          destinations: const [
            NavigationDestination(
              label: 'Clicker',
              icon: Icon(Icons.gamepad_outlined),
              selectedIcon: Icon(Icons.gamepad),
            ),
            NavigationDestination(
              label: 'Profile',
              icon: Icon(Icons.person_outlined),
              selectedIcon: Icon(Icons.person),
            ),
            NavigationDestination(
              label: 'Test',
              icon: Icon(Icons.bug_report_outlined),
              selectedIcon: Icon(Icons.bug_report),
            ),
          ],
        );
      },
    );
  }
}
