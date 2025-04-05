import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

@RoutePage()
class GamesListScreen extends StatelessWidget {
  const GamesListScreen({super.key});

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
