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
    final list = await Api.I.api.games.getV1Games();
    return ListResponse(
      list: list,
      //TODO: Add total
      metadata: ListResponseMeta(total: 10),
    );
  }
}
