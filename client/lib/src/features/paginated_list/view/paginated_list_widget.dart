import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:openquester/common_imports.dart';

class PaginatedListWidget<_Controller extends ListControllerBase<ListItem>,
    ListItem> extends StatelessWidget {
  const PaginatedListWidget({
    required this.itemBuilder,
    super.key,
  });

  final Widget Function(BuildContext, ListItem, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator.adaptive(
      onRefresh: () async => getIt<_Controller>().pagingController.refresh(),
      child: PagedListView<int, ListItem>(
        pagingController: getIt<_Controller>().pagingController,
        padding: EdgeInsets.only(bottom: 8),
        builderDelegate: PagedChildBuilderDelegate<ListItem>(
          animateTransitions: true,
          itemBuilder: itemBuilder,
        ),
      ),
    );
  }
}
