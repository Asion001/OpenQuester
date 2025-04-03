import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [const GamesList().expand()]);
  }
}
