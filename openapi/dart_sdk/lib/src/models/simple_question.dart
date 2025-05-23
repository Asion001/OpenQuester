// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package_entities_order.dart';
import 'package_question_file.dart';
import 'package_question_union.dart';
import 'question_answer_text.dart';
import 'simple_question_type.dart';

part 'simple_question.freezed.dart';
part 'simple_question.g.dart';

@Freezed()
abstract class SimpleQuestion with _$SimpleQuestion {
  const factory SimpleQuestion({
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
    required SimpleQuestionType type,
    QuestionAnswerText? answerText,
    List<PackageQuestionFile?>? questionFiles,
    List<PackageQuestionFile?>? answerFiles,

    /// Whether the question is hidden
    @Default(false)
    bool isHidden,

    /// Delay in milliseconds before being able to answer, if applicable
    @Default(4000)
    int answerDelay,
  }) = _SimpleQuestion;
  
  factory SimpleQuestion.fromJson(Map<String, Object?> json) => _$SimpleQuestionFromJson(json);
}
