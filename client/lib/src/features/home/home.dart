import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:openquester/generated/locale_keys.g.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        Card(
          child: InkWell(
            onTap: () {},
            child: Container(
              constraints: BoxConstraints(maxHeight: 300),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    LocaleKeys.home_start_game.tr(),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
