// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_update_event_subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameUpdateEventSubscriptionImpl _$$GameUpdateEventSubscriptionImplFromJson(
        Map<String, dynamic> json) =>
    _$GameUpdateEventSubscriptionImpl(
      event: GameUpdateEventSubscriptionEvent.fromJson(json['event'] as String),
      data: GameListItem.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GameUpdateEventSubscriptionImplToJson(
        _$GameUpdateEventSubscriptionImpl instance) =>
    <String, dynamic>{
      'event': instance.event,
      'data': instance.data,
    };
