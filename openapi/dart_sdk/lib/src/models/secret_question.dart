// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package_answer_file.dart';
import 'package_entities_order.dart';
import 'package_question_file.dart';
import 'package_question_union.dart';
import 'question_allowed_prices.dart';
import 'question_answer_text.dart';
import 'question_transfer_type.dart';
import 'secret_question_sub_type.dart';
import 'secret_question_type.dart';

part 'secret_question.freezed.dart';
part 'secret_question.g.dart';

@Freezed()
abstract class SecretQuestion with _$SecretQuestion {
  const factory SecretQuestion({
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
    required SecretQuestionType type,

    /// Subtype of the secret question. customPrice means player can choose cost of question
    required SecretQuestionSubType subType,
    required QuestionAllowedPrices allowedPrices,
    required QuestionTransferType transferType,
    QuestionAnswerText? answerText,
    List<PackageQuestionFile?>? questionFiles,
    List<PackageAnswerFile?>? answerFiles,

    /// Whether the question is hidden
    @Default(false)
    bool isHidden,

    /// Delay in milliseconds before being able to answer, if applicable
    @Default(4000)
    int answerDelay,
  }) = _SecretQuestion;
  
  factory SecretQuestion.fromJson(Map<String, Object?> json) => _$SecretQuestionFromJson(json);
}
