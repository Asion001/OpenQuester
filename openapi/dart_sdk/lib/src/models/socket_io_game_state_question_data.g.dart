// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_io_game_state_question_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocketIOGameStateQuestionDataImpl
    _$$SocketIOGameStateQuestionDataImplFromJson(Map<String, dynamic> json) =>
        _$SocketIOGameStateQuestionDataImpl(
          order: (json['order'] as num).toInt(),
          price: (json['price'] as num?)?.toInt(),
          questionComment: json['questionComment'] as String?,
        );

Map<String, dynamic> _$$SocketIOGameStateQuestionDataImplToJson(
        _$SocketIOGameStateQuestionDataImpl instance) =>
    <String, dynamic>{
      'order': instance.order,
      'price': instance.price,
      'questionComment': instance.questionComment,
    };
