// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'no_risk_question_sub_type.dart';
import 'no_risk_question_type.dart';
import 'package_answer_file.dart';
import 'package_question_file.dart';
import 'package_question_union.dart';

part 'no_risk_question.freezed.dart';
part 'no_risk_question.g.dart';

@Freezed()
class NoRiskQuestion with _$NoRiskQuestion {
  const factory NoRiskQuestion({
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
    required NoRiskQuestionType type,

    /// Subtype of the no-risk question. forEveryone means everyone answers it, basically giving chances for everyone, instead of one player
    required NoRiskQuestionSubType subType,

    /// Whether the question is hidden
    @Default(false)
    bool isHidden,

    /// Delay in milliseconds before being able to answer, if applicable
    @Default(4000)
    int answerDelay,

    /// Multiplier for question price nominal, so if price 200 with 2x multiplier it will give +400 and -0, depends if answer correct
    @Default(1.5)
    double priceMultiplier,
  }) = _NoRiskQuestion;
  
  factory NoRiskQuestion.fromJson(Map<String, Object?> json) => _$NoRiskQuestionFromJson(json);
}
