// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'io_game_join_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IOGameJoinInputImpl _$$IOGameJoinInputImplFromJson(
        Map<String, dynamic> json) =>
    _$IOGameJoinInputImpl(
      gameId: json['gameId'] as String,
      role: IOGameJoinInputRole.fromJson(json['role'] as String),
    );

Map<String, dynamic> _$$IOGameJoinInputImplToJson(
        _$IOGameJoinInputImpl instance) =>
    <String, dynamic>{
      'gameId': instance.gameId,
      'role': instance.role,
    };
