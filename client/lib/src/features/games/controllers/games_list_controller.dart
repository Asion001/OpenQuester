import 'package:openquester/common_imports.dart';

@Singleton(order: 5)
class GamesListController extends ListControllerBase<GameListItem> {
  String? queryFilter;

  @override
  @PostConstruct(preResolve: true)
  Future<void> init() async {
    await super.init();
    getIt<SocketController>().general.on(
          SocketIOEvents.games.name,
          _onSocketEvent,
        );
    queryFilter = null;
  }

  @override
  Future<void> dispose() async {
    await super.dispose();
    getIt<SocketController>().general.off(SocketIOEvents.games.name);
  }

  Future<void> _onSocketEvent(dynamic data) async {
    await GameEventSubscription.fromJson(
      data as Map<String, Object?>,
    ).map(
      created: (value) => addFirstItem(value.data),
      changed: (value) => updateItem(value.data),
      started: (value) => updateItem(value.data),
      deleted: (value) => deleteItem(value.data.id),
    );
  }

  @override
  Future<ListResponse<GameListItem>> getPage(ListRequest request) async {
    final list = await Api.I.api.games.getV1Games(
      limit: request.limit,
      offset: request.offset,
      order: OrderDirection.desc,
      sortBy: GamesSortBy.createdAt,
      titlePrefix: queryFilter,
    );
    return ListResponse(
      list: list.data,
      metadata: ListResponseMeta(total: list.pageInfo.total),
    );
  }

  /// Filters game list by titlePrefix
  /// If [text] is isEmptyOrNull search filter resets
  void search(String? text) {
    queryFilter = text.isEmptyOrNull ? null : text;
    pagingController.refresh();
  }
}
