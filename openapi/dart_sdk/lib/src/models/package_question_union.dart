// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'choice_question.dart';
import 'choice_question_type.dart';
import 'hidden_question.dart';
import 'hidden_question_type.dart';
import 'no_risk_question.dart';
import 'no_risk_question_sub_type.dart';
import 'no_risk_question_type.dart';
import 'package_entities_order.dart';
import 'package_question_file.dart';
import 'question_allowed_prices.dart';
import 'question_answer_text.dart';
import 'question_choice_answers.dart';
import 'question_max_price.dart';
import 'question_price_multiplier.dart';
import 'question_show_delay.dart';
import 'question_transfer_type.dart';
import 'secret_question.dart';
import 'secret_question_sub_type.dart';
import 'secret_question_type.dart';
import 'simple_question.dart';
import 'simple_question_type.dart';
import 'stake_question.dart';
import 'stake_question_sub_type.dart';
import 'stake_question_type.dart';

part 'package_question_union.freezed.dart';
part 'package_question_union.g.dart';

/// Polymorphic question union for all question types
@Freezed(unionKey: 'type')
sealed class PackageQuestionUnion with _$PackageQuestionUnion {
  @FreezedUnionValue('simple')
  const factory PackageQuestionUnion.simple({
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
  }) = PackageQuestionUnionSimple;

  @FreezedUnionValue('stake')
  const factory PackageQuestionUnion.stake({
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
    required StakeQuestionType type,
    required QuestionMaxPrice maxPrice,
    QuestionAnswerText? answerText,
    List<PackageQuestionFile?>? questionFiles,
    List<PackageQuestionFile?>? answerFiles,

    /// Whether the question is hidden
    @Default(false)
    bool isHidden,

    /// Delay in milliseconds before being able to answer, if applicable
    @Default(4000)
    int answerDelay,

    /// Subtype of the stake question. simple is basically auction. forEveryone means everyone place some amount of money and write answer
    @Default(StakeQuestionSubType.simple)
    StakeQuestionSubType subType,
  }) = PackageQuestionUnionStake;

  @FreezedUnionValue('secret')
  const factory PackageQuestionUnion.secret({
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
    List<PackageQuestionFile?>? answerFiles,

    /// Whether the question is hidden
    @Default(false)
    bool isHidden,

    /// Delay in milliseconds before being able to answer, if applicable
    @Default(4000)
    int answerDelay,
  }) = PackageQuestionUnionSecret;

  @FreezedUnionValue('noRisk')
  const factory PackageQuestionUnion.noRisk({
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
  }) = PackageQuestionUnionNoRisk;

  @FreezedUnionValue('choice')
  const factory PackageQuestionUnion.choice({
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
  }) = PackageQuestionUnionChoice;

  @FreezedUnionValue('hidden')
  const factory PackageQuestionUnion.hidden({
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
    List<PackageQuestionFile?>? answerFiles,

    /// Whether the question is hidden
    @Default(false)
    bool isHidden,

    /// Delay in milliseconds before being able to answer, if applicable
    @Default(4000)
    int answerDelay,
  }) = PackageQuestionUnionHidden;

  
  factory PackageQuestionUnion.fromJson(Map<String, Object?> json) => _$PackageQuestionUnionFromJson(json);
}
