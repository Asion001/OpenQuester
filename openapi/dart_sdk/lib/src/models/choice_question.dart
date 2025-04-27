// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'answers.dart';
import 'choice_question_type.dart';
import 'package_answer_file.dart';
import 'package_entities_order.dart';
import 'package_question_file.dart';
import 'package_question_union.dart';

part 'choice_question.freezed.dart';
part 'choice_question.g.dart';

@Freezed()
class ChoiceQuestion with _$ChoiceQuestion {
  const factory ChoiceQuestion({
    required int? id,
    required PackageEntitiesOrder order,

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
    required ChoiceQuestionType type,
    required dynamic subType,

    /// Delay before showing options in milliseconds
    required int showDelay,

    /// Multiple choice options; minimum 2, maximum 8 answers
    required List<Answers> answers,

    /// Whether the question is hidden
    @Default(false)
    bool isHidden,

    /// Delay in milliseconds before being able to answer, if applicable
    @Default(4000)
    int answerDelay,
  }) = _ChoiceQuestion;
  
  factory ChoiceQuestion.fromJson(Map<String, Object?> json) => _$ChoiceQuestionFromJson(json);
}
