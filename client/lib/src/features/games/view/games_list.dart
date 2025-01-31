import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:openquester/common_imports.dart';

class GamesList extends WatchingWidget {
  const GamesList({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator.adaptive(
      onRefresh: () async =>
          getIt<GamesListController>().pagingController.refresh(),
      child: PagedListView<int, GameListItem>(
        pagingController: getIt<GamesListController>().pagingController,
        builderDelegate: PagedChildBuilderDelegate<GameListItem>(
          animateTransitions: true,
          itemBuilder: (context, item, index) => GameListItemWidget(item: item),
        ),
      ),
    );
  }
}
