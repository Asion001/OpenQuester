// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_event_subscription_union.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameEventSubscriptionUnionCreated _$GameEventSubscriptionUnionCreatedFromJson(
        Map<String, dynamic> json) =>
    GameEventSubscriptionUnionCreated(
      event: GameUpdateEventSubscriptionEvent.fromJson(json['event'] as String),
      data: GameListItem.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameEventSubscriptionUnionCreatedToJson(
        GameEventSubscriptionUnionCreated instance) =>
    <String, dynamic>{
      'event': instance.event,
      'data': instance.data,
    };

GameEventSubscriptionUnionChanged _$GameEventSubscriptionUnionChangedFromJson(
        Map<String, dynamic> json) =>
    GameEventSubscriptionUnionChanged(
      event: GameUpdateEventSubscriptionEvent.fromJson(json['event'] as String),
      data: GameListItem.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameEventSubscriptionUnionChangedToJson(
        GameEventSubscriptionUnionChanged instance) =>
    <String, dynamic>{
      'event': instance.event,
      'data': instance.data,
    };

GameEventSubscriptionUnionStarted _$GameEventSubscriptionUnionStartedFromJson(
        Map<String, dynamic> json) =>
    GameEventSubscriptionUnionStarted(
      event: GameUpdateEventSubscriptionEvent.fromJson(json['event'] as String),
      data: GameListItem.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameEventSubscriptionUnionStartedToJson(
        GameEventSubscriptionUnionStarted instance) =>
    <String, dynamic>{
      'event': instance.event,
      'data': instance.data,
    };

GameEventSubscriptionUnionDeleted _$GameEventSubscriptionUnionDeletedFromJson(
        Map<String, dynamic> json) =>
    GameEventSubscriptionUnionDeleted(
      event: GameDeleteEventSubscriptionEvent.fromJson(json['event'] as String),
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameEventSubscriptionUnionDeletedToJson(
        GameEventSubscriptionUnionDeleted instance) =>
    <String, dynamic>{
      'event': instance.event,
      'data': instance.data,
    };
