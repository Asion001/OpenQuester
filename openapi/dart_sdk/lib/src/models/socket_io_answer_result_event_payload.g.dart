// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_io_answer_result_event_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocketIOAnswerResultEventPayload _$SocketIOAnswerResultEventPayloadFromJson(
        Map<String, dynamic> json) =>
    _SocketIOAnswerResultEventPayload(
      answerResult: json['answerResult'] == null
          ? null
          : GameStateAnsweredPlayer.fromJson(
              json['answerResult'] as Map<String, dynamic>),
      timer: json['timer'] == null
          ? null
          : GameStateTimer.fromJson(json['timer'] as Map<String, dynamic>),
      answerFiles: (json['answerFiles'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : PackageQuestionFile.fromJson(e as Map<String, dynamic>))
          .toList(),
      answerText: json['answerText'] as String?,
    );

Map<String, dynamic> _$SocketIOAnswerResultEventPayloadToJson(
        _SocketIOAnswerResultEventPayload instance) =>
    <String, dynamic>{
      'answerResult': instance.answerResult,
      'timer': instance.timer,
      'answerFiles': instance.answerFiles,
      'answerText': instance.answerText,
    };
