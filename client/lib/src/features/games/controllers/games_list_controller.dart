import 'package:openquester/common_imports.dart';

@Singleton(order: 5)
class GamesListController extends ListControllerBase<GameListItem> {
  @override
  @PostConstruct(preResolve: true)
  Future<void> init() async {
    await super.init();
    getIt<SocketController>()
        .general
        .on(SocketSubscriptions.games.name, _onSocketEvent);
  }

  @override
  Future<void> dispose() async {
    await super.dispose();
    getIt<SocketController>().general.off(SocketSubscriptions.games.name);
  }

  Future<void> _onSocketEvent(dynamic data) async {
    final gameEvent = PostSubscriptionGamesResponse.fromJson(data);
    final game = gameEvent.data;
    switch (gameEvent.event) {
      case IGameEvent.changed:
      case IGameEvent.started:
        _updateItem(game);
      case IGameEvent.created:
        _addFirstItem(game);
      case IGameEvent.deleted:
        _deleteItem(game);
      case IGameEvent.$unknown:
        break;
    }
  }

  Future<void> _deleteItem(GameListItem game) async {
    if (pagingController.itemList == null) return;
    final list = List<GameListItem>.from(pagingController.itemList!);
    final gameIndex = list.indexWhere((e) => e.id == game.id);
    if (gameIndex < 0) return;
    list.removeAt(gameIndex);
    pagingController.itemList = list;
  }

  Future<void> _addFirstItem(GameListItem game) async {
    if (pagingController.itemList == null) return;
    final list = List<GameListItem>.from(pagingController.itemList!);
    list.insert(0, game);
    pagingController.itemList = list;
  }

  Future<void> _updateItem(GameListItem game) async {
    if (pagingController.itemList == null) return;
    final list = List<GameListItem>.from(pagingController.itemList!);
    final gameIndex = list.indexWhere((e) => e.id == game.id);
    if (gameIndex < 0) return;
    list[gameIndex] = game;
    pagingController.itemList = list;
  }

  @override
  Future<ListResponse<GameListItem>> getPage(request) async {
    final list = await Api.I.api.games.getV1Games();
    return ListResponse(
      list: list.data,
      metadata: ListResponseMeta(total: list.pageInfo.total),
    );
  }
}
