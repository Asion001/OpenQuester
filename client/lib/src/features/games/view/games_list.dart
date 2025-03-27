import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

class GamesList extends StatelessWidget {
  const GamesList({super.key});

  @override
  Widget build(BuildContext context) {
    return PaginatedListWidget<GamesListController, GameListItem>(
      itemBuilder: (context, item, index) => GameListItemWidget(
        item: item,
        onTap: () => GamePreviewRoute(item: item).push<void>(context),
      ),
    );
  }
}
