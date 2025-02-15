// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_event_subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameEventSubscriptionImpl _$$GameEventSubscriptionImplFromJson(
        Map<String, dynamic> json) =>
    _$GameEventSubscriptionImpl(
      event: GameEvent.fromJson(json['event'] as String),
      data: GameListItem.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GameEventSubscriptionImplToJson(
        _$GameEventSubscriptionImpl instance) =>
    <String, dynamic>{
      'event': instance.event,
      'data': instance.data,
    };
