// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_delete_event_subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameDeleteEventSubscription _$GameDeleteEventSubscriptionFromJson(
        Map<String, dynamic> json) =>
    _GameDeleteEventSubscription(
      event: GameDeleteEventSubscriptionEvent.fromJson(json['event'] as String),
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameDeleteEventSubscriptionToJson(
        _GameDeleteEventSubscription instance) =>
    <String, dynamic>{
      'event': instance.event,
      'data': instance.data,
    };
