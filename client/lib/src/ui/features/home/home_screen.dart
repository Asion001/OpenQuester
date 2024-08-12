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
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              label: 'Clicker',
              icon: Icon(Icons.gamepad_outlined),
              activeIcon: Icon(Icons.gamepad),
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person_outlined),
              activeIcon: Icon(Icons.person),
            ),
          ],
        );
      },
    );
  }
}
