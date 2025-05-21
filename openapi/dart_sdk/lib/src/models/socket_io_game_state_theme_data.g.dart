// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_io_game_state_theme_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocketIOGameStateThemeData _$SocketIOGameStateThemeDataFromJson(
  Map<String, dynamic> json,
) => _SocketIOGameStateThemeData(
  order: (json['order'] as num).toInt(),
  name: json['name'] as String,
  description: json['description'] as String?,
  questions: (json['questions'] as List<dynamic>)
      .map(
        (e) =>
            SocketIOGameStateQuestionData.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$SocketIOGameStateThemeDataToJson(
  _SocketIOGameStateThemeData instance,
) => <String, dynamic>{
  'order': instance.order,
  'name': instance.name,
  'description': instance.description,
  'questions': instance.questions,
};
