import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'widgets/img_opening.dart';
import 'widgets/url_generator.dart';

@RoutePage(name: 'TestScreenRoute')
class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(24),
        padding: const EdgeInsets.all(24),
        child: ListView(
          children: [
            const ImgTest(),
             const UrlGeneratorTest(),
          ].map(_itemCover).toList(),
        ),
      ),
    );
  }

  Widget _itemCover(Widget e) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: e,
      ),
    );
  }
}
