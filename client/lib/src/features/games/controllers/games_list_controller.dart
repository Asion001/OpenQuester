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
    const gameChangedEvents = [
      IGameEvent.changed,
      IGameEvent.started,
    ];
    final game = gameEvent.data;
    if (gameChangedEvents.contains(gameEvent.event)) {
      _updateItem(game);
    } else if (gameEvent.event == IGameEvent.created) {
      _addFirstItem(game);
    } else if (gameEvent.event == IGameEvent.deleted) {
      _deleteItem(game);
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
