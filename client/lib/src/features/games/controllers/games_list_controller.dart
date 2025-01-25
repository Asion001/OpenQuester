import 'package:openquester/common_imports.dart';

@singleton
class GamesListController extends ListControllerBase<GameListItem> {
  @override
  @PostConstruct(preResolve: true)
  Future<void> init() {
    return super.init();
  }

  @override
  Future<ListResponse<GameListItem>> getPage(request) async {
    //TODO: Remove mock
    final user = IShortUserInfo(id: 1, name: 'asion');
    final package = IPackageItem(
      id: 2,
      title: "asdasdasd",
      ageRestriction: IPackageItemAgeRestriction.a18,
      createdAt: DateTime.now(),
      rounds: 5,
      author: user,
    );
    final list = [
      for (var i = 0; i < 30; i++)
        GameListItem(
          id: 'asdasd',
          title: 'asdasdasdasdasd',
          createdBy: user,
          createdAt: DateTime.now(),
          currentRound: 1,
          maxPlayers: 10,
          package: package,
          players: 2,
          startedAt: null,
        ),
    ];
    return ListResponse(
      list: list,
      //TODO: Add total
      metadata: ListResponseMeta(total: 10),
    );
  }
}
