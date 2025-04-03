import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

@RoutePage()
class GamePreviewScreen extends StatelessWidget {
  const GamePreviewScreen({
    required this.item,
    super.key,
  });
  final GameListItem item;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GameListItemWidget(
            item: item,
            onTap: null,
          ),
        ],
      ),
    );
  }
}
