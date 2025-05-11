// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'hidden_question_type.dart';
import 'package_answer_file.dart';
import 'package_entities_order.dart';
import 'package_question_file.dart';
import 'package_question_union.dart';
import 'question_answer_text.dart';

part 'hidden_question.freezed.dart';
part 'hidden_question.g.dart';

@Freezed()
abstract class HiddenQuestion with _$HiddenQuestion {
  const factory HiddenQuestion({
    required int? id,
    required PackageEntitiesOrder order,

    /// Price is null only if price is hidden
    required int? price,

    /// Question text
    required String? text,

    /// Hint for the answer
    required String? answerHint,

    /// Comment or note about the question
    required String? questionComment,
    required HiddenQuestionType type,
    QuestionAnswerText? answerText,
    List<PackageQuestionFile?>? questionFiles,
    List<PackageAnswerFile?>? answerFiles,

    /// Whether the question is hidden
    @Default(false)
    bool isHidden,

    /// Delay in milliseconds before being able to answer, if applicable
    @Default(4000)
    int answerDelay,
  }) = _HiddenQuestion;
  
  factory HiddenQuestion.fromJson(Map<String, Object?> json) => _$HiddenQuestionFromJson(json);
}
