import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:openquester/common_imports.dart';

class GamesList extends WatchingWidget {
  const GamesList({super.key});

  @override
  Widget build(BuildContext context) {
    return PagedListView<int, GameListItem>.separated(
      pagingController: getIt<GamesListController>().pagingController,
      padding: EdgeInsets.symmetric(horizontal: 16),
      separatorBuilder: (BuildContext context, int index) =>
          Divider(height: 27),
      builderDelegate: PagedChildBuilderDelegate<GameListItem>(
        itemBuilder: (context, item, index) => GameListItemWidget(item: item),
      ),
    );
  }
}
