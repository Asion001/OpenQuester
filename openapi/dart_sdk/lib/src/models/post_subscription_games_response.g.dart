// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_subscription_games_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostSubscriptionGamesResponseImpl
    _$$PostSubscriptionGamesResponseImplFromJson(Map<String, dynamic> json) =>
        _$PostSubscriptionGamesResponseImpl(
          event: IGameEvent.fromJson(json['event'] as String),
          data: IGameListItem.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$PostSubscriptionGamesResponseImplToJson(
        _$PostSubscriptionGamesResponseImpl instance) =>
    <String, dynamic>{
      'event': instance.event,
      'data': instance.data,
    };
