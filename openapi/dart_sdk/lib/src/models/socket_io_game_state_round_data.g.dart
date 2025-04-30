// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_io_game_state_round_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocketIOGameStateRoundDataImpl _$$SocketIOGameStateRoundDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SocketIOGameStateRoundDataImpl(
      order: (json['order'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
      themes: (json['themes'] as List<dynamic>)
          .map((e) =>
              SocketIOGameStateThemeData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SocketIOGameStateRoundDataImplToJson(
        _$SocketIOGameStateRoundDataImpl instance) =>
    <String, dynamic>{
      'order': instance.order,
      'name': instance.name,
      'description': instance.description,
      'themes': instance.themes,
    };
