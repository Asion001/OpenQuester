// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';
import 'game_delete_event_subscription.dart';
import 'game_delete_event_subscription_event.dart';
import 'game_event_subscription_union.dart';
import 'game_list_item.dart';
import 'game_update_event_subscription.dart';
import 'game_update_event_subscription_event.dart';

part 'game_event_subscription_union.freezed.dart';
part 'game_event_subscription_union.g.dart';

@Freezed(unionKey: 'event')
sealed class GameEventSubscriptionUnion with _$GameEventSubscriptionUnion {
  @FreezedUnionValue('created')
  const factory GameEventSubscriptionUnion.created({
    required GameUpdateEventSubscriptionEvent event,
    required GameListItem data,
  }) = GameEventSubscriptionUnionCreated;

  @FreezedUnionValue('changed')
  const factory GameEventSubscriptionUnion.changed({
    required GameUpdateEventSubscriptionEvent event,
    required GameListItem data,
  }) = GameEventSubscriptionUnionChanged;

  @FreezedUnionValue('started')
  const factory GameEventSubscriptionUnion.started({
    required GameUpdateEventSubscriptionEvent event,
    required GameListItem data,
  }) = GameEventSubscriptionUnionStarted;

  @FreezedUnionValue('deleted')
  const factory GameEventSubscriptionUnion.deleted({
    required GameDeleteEventSubscriptionEvent event,
    required Data data,
  }) = GameEventSubscriptionUnionDeleted;

  
  factory GameEventSubscriptionUnion.fromJson(Map<String, Object?> json) => _$GameEventSubscriptionUnionFromJson(json);
}
