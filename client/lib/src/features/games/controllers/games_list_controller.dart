import 'package:openquester/common_imports.dart';

@singleton
class GamesListController extends ListControllerBase<GameListItem> {
  @override
  Future<List<GameListItem>> getPage(request) => Api.I.api.games.getV1Games();
}
