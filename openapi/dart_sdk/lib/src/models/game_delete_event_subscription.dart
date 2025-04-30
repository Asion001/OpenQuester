// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';
import 'game_delete_event_subscription_event.dart';
import 'game_event_subscription_union.dart';

part 'game_delete_event_subscription.freezed.dart';
part 'game_delete_event_subscription.g.dart';

@Freezed()
abstract class GameDeleteEventSubscription with _$GameDeleteEventSubscription {
  const factory GameDeleteEventSubscription({
    required GameDeleteEventSubscriptionEvent event,
    required Data data,
  }) = _GameDeleteEventSubscription;
  
  factory GameDeleteEventSubscription.fromJson(Map<String, Object?> json) => _$GameDeleteEventSubscriptionFromJson(json);
}
