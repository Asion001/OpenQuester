// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_update_event_subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameUpdateEventSubscription _$GameUpdateEventSubscriptionFromJson(
        Map<String, dynamic> json) =>
    _GameUpdateEventSubscription(
      event: GameUpdateEventSubscriptionEvent.fromJson(json['event'] as String),
      data: GameListItem.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameUpdateEventSubscriptionToJson(
        _GameUpdateEventSubscription instance) =>
    <String, dynamic>{
      'event': instance.event,
      'data': instance.data,
    };
