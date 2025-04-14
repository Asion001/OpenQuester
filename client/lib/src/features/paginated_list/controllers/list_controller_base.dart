import 'package:flutter/foundation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:openquester/src/core/logger.dart';

abstract class ListControllerBase<I extends dynamic> extends ChangeNotifier {
  int? _nextPageKey = 0;

  @protected
  Future<ListResponse<I>> getPage(ListRequest request);

  Future<void> init() async {}

  Future<List<I>> _fetchPage(int pageKey) async {
    try {
      final listRequest = ListRequest(offset: pageKey);
      final newItems = await getPage(listRequest);

      _setNextPage(newItems, listRequest);

      return newItems.list;
    } catch (e, s) {
      logger.e(e, stackTrace: s);
      rethrow;
    }
  }

  void _setNextPage(ListResponse<dynamic> newItems, ListRequest listRequest) {
    final currentLenght = pagingController.items?.length ?? 0;
    if (newItems.metadata.total > currentLenght + newItems.list.length) {
      _nextPageKey = listRequest.offset + 1;
    } else {
      _nextPageKey = null;
    }
  }

  @protected
  Future<void> deleteItem(I item) async {
    // TODO: Migrate to new version
    // final items = pagingController.items;
    // if (items == null) return;
    // final list = List<I>.from(items);
    // final gameIndex = list.indexWhere((e) => e.id == item.id);
    // if (gameIndex < 0) return;
    // list.removeAt(gameIndex);
    // pagingController.value = pagingController.items = ;
  }

  @protected
  Future<void> addFirstItem(I item) async {
    // if (pagingController.itemList == null) return;
    // final list = List<I>.from(pagingController.itemList!)..insert(0, item);
    // pagingController.itemList = list;
  }

  @protected
  Future<void> updateItem(I game) async {
    // if (pagingController.itemList == null) return;
    // final list = List<I>.from(pagingController.itemList!);
    // final gameIndex = list.indexWhere((e) => e.id == game.id);
    // if (gameIndex < 0) return;
    // list[gameIndex] = game;
    // pagingController.itemList = list;
  }

  @override
  Future<void> dispose() async {
    super.dispose();
    pagingController.dispose();
  }

  late final PagingController<int, I> pagingController = PagingController(
    getNextPageKey: _getNextPageKey,
    fetchPage: _fetchPage,
  );

  int? _getNextPageKey(PagingState<int, I> state) {
    if (state.status == PagingStatus.loadingFirstPage) {
      return _nextPageKey = 0;
    }
    return _nextPageKey;
  }
}

class ListRequest {
  const ListRequest({required this.offset, this.limit = 20});
  final int limit;
  final int offset;
}

class ListResponse<I> {
  const ListResponse({required this.list, required this.metadata});
  final List<I> list;
  final ListResponseMeta metadata;
}

class ListResponseMeta {
  const ListResponseMeta({required this.total});
  final int total;
}
