// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_io_question_finish_event_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocketIOQuestionFinishEventPayload
    _$SocketIOQuestionFinishEventPayloadFromJson(Map<String, dynamic> json) =>
        _SocketIOQuestionFinishEventPayload(
          answerFiles: (json['answerFiles'] as List<dynamic>?)
              ?.map((e) => (e as List<dynamic>)
                  .map((e) => e == null
                      ? null
                      : PackageAnswerFile.fromJson(e as Map<String, dynamic>))
                  .toList())
              .toList(),
          answerText: json['answerText'] as String?,
        );

Map<String, dynamic> _$SocketIOQuestionFinishEventPayloadToJson(
        _SocketIOQuestionFinishEventPayload instance) =>
    <String, dynamic>{
      'answerFiles': instance.answerFiles,
      'answerText': instance.answerText,
    };
