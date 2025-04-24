// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_event_subscription_union.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameEventSubscriptionUnionCreatedImpl
    _$$GameEventSubscriptionUnionCreatedImplFromJson(
            Map<String, dynamic> json) =>
        _$GameEventSubscriptionUnionCreatedImpl(
          event: GameUpdateEventSubscriptionEvent.fromJson(
              json['event'] as String),
          data: GameListItem.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GameEventSubscriptionUnionCreatedImplToJson(
        _$GameEventSubscriptionUnionCreatedImpl instance) =>
    <String, dynamic>{
      'event': instance.event,
      'data': instance.data,
    };

_$GameEventSubscriptionUnionChangedImpl
    _$$GameEventSubscriptionUnionChangedImplFromJson(
            Map<String, dynamic> json) =>
        _$GameEventSubscriptionUnionChangedImpl(
          event: GameUpdateEventSubscriptionEvent.fromJson(
              json['event'] as String),
          data: GameListItem.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GameEventSubscriptionUnionChangedImplToJson(
        _$GameEventSubscriptionUnionChangedImpl instance) =>
    <String, dynamic>{
      'event': instance.event,
      'data': instance.data,
    };

_$GameEventSubscriptionUnionStartedImpl
    _$$GameEventSubscriptionUnionStartedImplFromJson(
            Map<String, dynamic> json) =>
        _$GameEventSubscriptionUnionStartedImpl(
          event: GameUpdateEventSubscriptionEvent.fromJson(
              json['event'] as String),
          data: GameListItem.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GameEventSubscriptionUnionStartedImplToJson(
        _$GameEventSubscriptionUnionStartedImpl instance) =>
    <String, dynamic>{
      'event': instance.event,
      'data': instance.data,
    };

_$GameEventSubscriptionUnionDeletedImpl
    _$$GameEventSubscriptionUnionDeletedImplFromJson(
            Map<String, dynamic> json) =>
        _$GameEventSubscriptionUnionDeletedImpl(
          event: GameDeleteEventSubscriptionEvent.fromJson(
              json['event'] as String),
          data: Data.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$GameEventSubscriptionUnionDeletedImplToJson(
        _$GameEventSubscriptionUnionDeletedImpl instance) =>
    <String, dynamic>{
      'event': instance.event,
      'data': instance.data,
    };
