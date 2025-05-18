// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_result_wrong_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AnswerResultWrongData _$AnswerResultWrongDataFromJson(
        Map<String, dynamic> json) =>
    _AnswerResultWrongData(
      playerAnswerResult: GameStateAnsweredPlayer.fromJson(
          json['playerAnswerResult'] as Map<String, dynamic>),
      timer: GameStateTimer.fromJson(json['timer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnswerResultWrongDataToJson(
        _AnswerResultWrongData instance) =>
    <String, dynamic>{
      'playerAnswerResult': instance.playerAnswerResult,
      'timer': instance.timer,
    };
