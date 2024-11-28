// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'oq_answer_file.dart';
import 'oq_question_file.dart';

part 'oq_questions_structure.freezed.dart';
part 'oq_questions_structure.g.dart';

@Freezed()
class OQQuestionsStructure with _$OQQuestionsStructure {
  const factory OQQuestionsStructure({
    required num price,
    required String type,
    required String text,
    required String hostHint,
    required String playersHint,
    required String answerText,
    required OQQuestionFile questionFile,
    required OQAnswerFile answerFile,
  }) = _OQQuestionsStructure;
  
  factory OQQuestionsStructure.fromJson(Map<String, Object?> json) => _$OQQuestionsStructureFromJson(json);
}
