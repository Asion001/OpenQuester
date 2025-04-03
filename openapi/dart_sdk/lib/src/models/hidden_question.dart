// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'hidden_question_type.dart';
import 'package_answer_file.dart';
import 'package_question_file.dart';
import 'package_question_union.dart';

part 'hidden_question.freezed.dart';
part 'hidden_question.g.dart';

@Freezed()
class HiddenQuestion with _$HiddenQuestion {
  const factory HiddenQuestion({
    required int? id,

    /// Point value of the question
    required int price,

    /// Question text
    required String? text,

    /// Hint for the answer
    required String? answerHint,

    /// Correct answer text
    required String? answerText,

    /// Comment or note about the question
    required String? questionComment,

    /// Media files for the question
    required List<PackageQuestionFile>? questionFiles,

    /// Media files for the answer
    required List<PackageAnswerFile>? answerFiles,
    required HiddenQuestionType type,

    /// Whether the question is hidden
    @Default(false)
    bool isHidden,

    /// Delay in milliseconds before being able to answer, if applicable
    @Default(4000)
    int answerDelay,
  }) = _HiddenQuestion;
  
  factory HiddenQuestion.fromJson(Map<String, Object?> json) => _$HiddenQuestionFromJson(json);
}
