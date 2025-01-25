import 'package:flutter/foundation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:openquester/src/core/logger.dart';

abstract class ListControllerBase<I> extends ChangeNotifier {
  @protected
  Future<List<I>> getPage(ListRequest request);

  Future<void> init() async {
    pagingController.addPageRequestListener(_fetchPage);
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final listRequest = ListRequest(offset: pageKey);
      final newItems = await getPage(listRequest);
      final isLastPage = newItems.length < listRequest.limit;
      if (isLastPage) {
        pagingController.appendLastPage(newItems);
      } else {
        final nextPageKey = pageKey + newItems.length;
        pagingController.appendPage(newItems, nextPageKey);
      }
    } catch (e, s) {
      pagingController.error = e;
      logger.e(e, stackTrace: s);
    }
  }

  @override
  Future<void> dispose() async {
    super.dispose();
    pagingController.dispose();
  }

  final PagingController<int, I> pagingController =
      PagingController(firstPageKey: 0);
}

class ListRequest {
  const ListRequest({
    required this.offset,
    this.limit = 10,
  });
  final int limit;
  final int offset;
}
