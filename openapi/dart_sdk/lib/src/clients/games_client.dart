// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/game_create_data.dart';
import '../models/game_list_item.dart';
import '../models/games_sort_by.dart';
import '../models/order_direction.dart';
import '../models/paginated_games.dart';
import '../models/pagination_limit.dart';
import '../models/pagination_offset.dart';

part 'games_client.g.dart';

@RestApi()
abstract class GamesClient {
  factory GamesClient(Dio dio, {String? baseUrl}) = _GamesClient;

  /// Get all games
  @GET('/v1/games')
  Future<PaginatedGames> getV1Games({
    @Query('sortBy') required GamesSortBy sortBy,
    @Query('order') required OrderDirection order,
    @Query('limit') required PaginationLimit limit,
    @Query('offset') required PaginationOffset offset,
  });

  /// Create a new game
  @POST('/v1/games')
  Future<GameListItem> postV1Games({
    @Body() required GameCreateData body,
  });

  /// Get game by gameId
  @GET('/v1/games/{gameId}')
  Future<GameListItem> getV1GamesGameId({
    @Path('gameId') required String gameId,
  });

  /// Delete game
  @DELETE('/v1/games/{gameId}')
  Future<void> deleteV1GamesGameId({
    @Path('gameId') required String gameId,
  });
}
