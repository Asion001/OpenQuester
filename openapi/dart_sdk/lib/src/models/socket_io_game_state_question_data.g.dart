// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_io_game_state_question_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocketIOGameStateQuestionData _$SocketIOGameStateQuestionDataFromJson(
  Map<String, dynamic> json,
) => _SocketIOGameStateQuestionData(
  id: (json['id'] as num).toInt(),
  order: (json['order'] as num).toInt(),
  price: (json['price'] as num?)?.toInt(),
  questionComment: json['questionComment'] as String?,
  isPlayed: json['isPlayed'] as bool,
);

Map<String, dynamic> _$SocketIOGameStateQuestionDataToJson(
  _SocketIOGameStateQuestionData instance,
) => <String, dynamic>{
  'id': instance.id,
  'order': instance.order,
  'price': instance.price,
  'questionComment': instance.questionComment,
  'isPlayed': instance.isPlayed,
};
