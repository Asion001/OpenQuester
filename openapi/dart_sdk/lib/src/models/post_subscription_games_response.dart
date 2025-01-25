// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'i_game_event.dart';
import 'i_game_list_item.dart';

part 'post_subscription_games_response.freezed.dart';
part 'post_subscription_games_response.g.dart';

@Freezed()
class PostSubscriptionGamesResponse with _$PostSubscriptionGamesResponse {
  const factory PostSubscriptionGamesResponse({
    required IGameEvent event,
    required IGameListItem data,
  }) = _PostSubscriptionGamesResponse;
  
  factory PostSubscriptionGamesResponse.fromJson(Map<String, Object?> json) => _$PostSubscriptionGamesResponseFromJson(json);
}
