// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/games_sort_by.dart';
import '../models/i_game_create_data.dart';
import '../models/i_game_list_item.dart';
import '../models/order_direction.dart';
import '../models/paggination_limit.dart';
import '../models/paggination_offset.dart';
import '../models/paginated_games.dart';

part 'games_client.g.dart';

@RestApi()
abstract class GamesClient {
  factory GamesClient(Dio dio, {String? baseUrl}) = _GamesClient;

  /// Get all games
  @GET('/v1/games')
  Future<PaginatedGames> getV1Games({
    @Query('limit') required PagginationLimit limit,
    @Query('offset') required PagginationOffset offset,
    @Query('sortBy') GamesSortBy? sortBy,
    @Query('order') OrderDirection? order,
    @Extras() Map<String, dynamic>? extras,
    @DioOptions() RequestOptions? options,
  });

  /// Create a new game
  @POST('/v1/games')
  Future<IGameListItem> postV1Games({
    @Body() required IGameCreateData body,
    @Extras() Map<String, dynamic>? extras,
    @DioOptions() RequestOptions? options,
  });

  /// Get game by id
  @GET('/v1/games/{id}')
  Future<IGameListItem> getV1GamesId({
    @Path('id') required String id,
    @Extras() Map<String, dynamic>? extras,
    @DioOptions() RequestOptions? options,
  });
}
