// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_io_question_data_event_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocketIOQuestionDataEventPayload _$SocketIOQuestionDataEventPayloadFromJson(
        Map<String, dynamic> json) =>
    _SocketIOQuestionDataEventPayload(
      data: json['data'],
      timer: GameStateTimer.fromJson(json['timer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SocketIOQuestionDataEventPayloadToJson(
        _SocketIOQuestionDataEventPayload instance) =>
    <String, dynamic>{
      'data': instance.data,
      'timer': instance.timer,
    };
