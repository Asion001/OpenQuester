// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_delete_event_subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameDeleteEventSubscriptionImpl _$$GameDeleteEventSubscriptionImplFromJson(
        Map<String, dynamic> json) =>
    _$GameDeleteEventSubscriptionImpl(
      event: GameDeleteEventSubscriptionEvent.fromJson(json['event'] as String),
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GameDeleteEventSubscriptionImplToJson(
        _$GameDeleteEventSubscriptionImpl instance) =>
    <String, dynamic>{
      'event': instance.event,
      'data': instance.data,
    };
