// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'game_event_subscription_union.dart';
import 'game_list_item.dart';
import 'game_update_event_subscription_event.dart';

part 'game_update_event_subscription.freezed.dart';
part 'game_update_event_subscription.g.dart';

@Freezed()
abstract class GameUpdateEventSubscription with _$GameUpdateEventSubscription {
  const factory GameUpdateEventSubscription({
    required GameUpdateEventSubscriptionEvent event,
    required GameListItem data,
  }) = _GameUpdateEventSubscription;
  
  factory GameUpdateEventSubscription.fromJson(Map<String, Object?> json) => _$GameUpdateEventSubscriptionFromJson(json);
}
