// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/post_subscription_games_response.dart';

part 'socket_io_client.g.dart';

@RestApi()
abstract class SocketIOClient {
  factory SocketIOClient(Dio dio, {String? baseUrl}) = _SocketIOClient;

  /// Subscribe to games events.
  ///
  /// Subscribes to the 'games' event to receive updates about game changes, creations, and removals.
  @POST('/subscription/games')
  Future<PostSubscriptionGamesResponse> postSubscriptionGames({
    @Extras() Map<String, dynamic>? extras,
    @DioOptions() RequestOptions? options,
  });
}
