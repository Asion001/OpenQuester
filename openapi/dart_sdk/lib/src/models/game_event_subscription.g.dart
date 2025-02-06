// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_event_subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameEventSubscriptionImpl _$$GameEventSubscriptionImplFromJson(
        Map<String, dynamic> json) =>
    _$GameEventSubscriptionImpl(
      event: IGameEvent.fromJson(json['event'] as String),
      data: IGameListItem.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GameEventSubscriptionImplToJson(
        _$GameEventSubscriptionImpl instance) =>
    <String, dynamic>{
      'event': instance.event,
      'data': instance.data,
    };
