import 'package:openquester/common_imports.dart';

@Singleton(order: 5)
class PackagesListController extends ListControllerBase<PackageListItem> {
  @override
  @PostConstruct(preResolve: true)
  Future<void> init() async {
    await super.init();
    // getIt<SocketController>()
    //     .general
    //     .on(SocketSubscriptions.games.name, _onSocketEvent);
  }

  @override
  Future<void> dispose() async {
    await super.dispose();
    // getIt<SocketController>().general.off(SocketSubscriptions.games.name);
  }

  // TODO: Package Socket subscription
  // Future<void> _onSocketEvent(dynamic data) async {
  //   final gameEvent = PostSubscriptionGamesResponse.fromJson(data);
  //   final game = gameEvent.data;
  //   switch (gameEvent.event) {
  //     case IGameEvent.changed:
  //     case IGameEvent.started:
  //       updateItem(game);
  //     case IGameEvent.created:
  //       addFirstItem(game);
  //     case IGameEvent.deleted:
  //       deleteItem(game);
  //     case IGameEvent.$unknown:
  //       break;
  //   }
  // }

  @override
  Future<ListResponse<PackageListItem>> getPage(ListRequest request) async {
    final list = await Api.I.api.packages.getV1Packages(
      limit: request.limit,
      offset: request.offset,
      order: OrderDirection.desc,
      sortBy: PackagesSortBy.createdAt,
    );
    return ListResponse(
      list: list.data,
      metadata: ListResponseMeta(total: list.pageInfo.total),
    );
  }
}
