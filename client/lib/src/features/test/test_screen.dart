import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'items/file_opening.dart';
import 'items/img_opening.dart';
import 'items/url_generator.dart';
import 'items/ws_test.dart';

@RoutePage(name: 'TestScreenRoute')
class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(45),
        children: [
          ('Image test', const ImgTest()),
          ('Url test', const UrlGeneratorTest()),
          ('Pack upload test', const FileOpening()),
          ('Web socket', WsTest()),
        ].map(_itemCover).toList(),
      ),
    );
  }

  Widget _itemCover((String, Widget) e) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(e.$1),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: e.$2,
          ),
        ],
      ),
    );
  }
}
