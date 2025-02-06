// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'i_game_event.dart';
import 'i_game_list_item.dart';

part 'game_event_subscription.freezed.dart';
part 'game_event_subscription.g.dart';

@Freezed()
class GameEventSubscription with _$GameEventSubscription {
  const factory GameEventSubscription({
    required IGameEvent event,
    required IGameListItem data,
  }) = _GameEventSubscription;
  
  factory GameEventSubscription.fromJson(Map<String, Object?> json) => _$GameEventSubscriptionFromJson(json);
}
