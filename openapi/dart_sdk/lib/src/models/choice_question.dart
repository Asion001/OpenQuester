// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'choice_question_type.dart';
import 'package_entities_order.dart';
import 'package_question_file.dart';
import 'package_question_union.dart';
import 'question_answer_text.dart';
import 'question_choice_answers.dart';
import 'question_show_delay.dart';

part 'choice_question.freezed.dart';
part 'choice_question.g.dart';

@Freezed()
abstract class ChoiceQuestion with _$ChoiceQuestion {
  const factory ChoiceQuestion({
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
    required ChoiceQuestionType type,
    required dynamic subType,
    required QuestionShowDelay showDelay,
    required List<QuestionChoiceAnswers> answers,
    QuestionAnswerText? answerText,
    List<PackageQuestionFile?>? questionFiles,
    List<PackageQuestionFile?>? answerFiles,

    /// Whether the question is hidden
    @Default(false)
    bool isHidden,

    /// Delay in milliseconds before being able to answer, if applicable
    @Default(4000)
    int answerDelay,
  }) = _ChoiceQuestion;
  
  factory ChoiceQuestion.fromJson(Map<String, Object?> json) => _$ChoiceQuestionFromJson(json);
}
