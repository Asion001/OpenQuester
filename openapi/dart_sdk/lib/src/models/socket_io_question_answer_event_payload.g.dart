// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_io_question_answer_event_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocketIOQuestionAnswerEventPayload
_$SocketIOQuestionAnswerEventPayloadFromJson(Map<String, dynamic> json) =>
    _SocketIOQuestionAnswerEventPayload(
      userId: (json['userId'] as num).toInt(),
      timer: GameStateTimer.fromJson(json['timer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SocketIOQuestionAnswerEventPayloadToJson(
  _SocketIOQuestionAnswerEventPayload instance,
) => <String, dynamic>{'userId': instance.userId, 'timer': instance.timer};
