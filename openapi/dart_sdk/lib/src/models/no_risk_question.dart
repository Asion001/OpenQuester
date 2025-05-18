// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'no_risk_question_sub_type.dart';
import 'no_risk_question_type.dart';
import 'package_entities_order.dart';
import 'package_question_file.dart';
import 'package_question_union.dart';
import 'question_answer_text.dart';
import 'question_price_multiplier.dart';

part 'no_risk_question.freezed.dart';
part 'no_risk_question.g.dart';

@Freezed()
abstract class NoRiskQuestion with _$NoRiskQuestion {
  const factory NoRiskQuestion({
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
    required NoRiskQuestionType type,

    /// Subtype of the no-risk question. forEveryone means everyone answers it, basically giving chances for everyone, instead of one player
    required NoRiskQuestionSubType subType,
    required QuestionPriceMultiplier priceMultiplier,
    QuestionAnswerText? answerText,
    List<PackageQuestionFile?>? questionFiles,
    List<PackageQuestionFile?>? answerFiles,

    /// Whether the question is hidden
    @Default(false)
    bool isHidden,

    /// Delay in milliseconds before being able to answer, if applicable
    @Default(4000)
    int answerDelay,
  }) = _NoRiskQuestion;
  
  factory NoRiskQuestion.fromJson(Map<String, Object?> json) => _$NoRiskQuestionFromJson(json);
}
