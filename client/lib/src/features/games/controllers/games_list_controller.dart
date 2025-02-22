import 'package:openquester/common_imports.dart';

@Singleton(order: 5)
class GamesListController extends ListControllerBase<GameListItem> {
  @override
  @PostConstruct(preResolve: true)
  Future<void> init() async {
    await super.init();
    getIt<SocketController>().general.on(
      SocketSubscriptions.games.name,
      _onSocketEvent,
    );
  }

  @override
  Future<void> dispose() async {
    await super.dispose();
    getIt<SocketController>().general.off(SocketSubscriptions.games.name);
  }

  Future<void> _onSocketEvent(dynamic data) async {
    final gameEvent = GameEventSubscription.fromJson(data);
    final game = gameEvent.data;
    switch (gameEvent.event) {
      case GameEvent.changed:
      case GameEvent.started:
        updateItem(game);
      case GameEvent.created:
        addFirstItem(game);
      case GameEvent.deleted:
        deleteItem(game);
      case GameEvent.$unknown:
        break;
    }
  }

  @override
  Future<ListResponse<GameListItem>> getPage(request) async {
    final list = await Api.I.api.games.getV1Games(
      limit: request.limit,
      offset: request.offset,
      order: OrderDirection.desc,
      sortBy: GamesSortBy.createdAt,
    );
    return ListResponse(
      list: list.data,
      metadata: ListResponseMeta(total: list.pageInfo.total),
    );
  }
}
