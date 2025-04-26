// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'answers.dart';
import 'choice_question.dart';
import 'choice_question_type.dart';
import 'hidden_question.dart';
import 'hidden_question_type.dart';
import 'no_risk_question.dart';
import 'no_risk_question_sub_type.dart';
import 'no_risk_question_type.dart';
import 'package_answer_file.dart';
import 'package_question_file.dart';
import 'package_question_transfer_type.dart';
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

    /// Order of the question in the theme, should be unique, starting from 0
    required int order,

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
    required SimpleQuestionType type,

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

    /// Order of the question in the theme, should be unique, starting from 0
    required int order,

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
    required StakeQuestionType type,

    /// Maximum price for the stake question, most useful when type is forEveryone - Does not allow top players to go all-in and win. Typically maxPrice can be 2x or 3x of nominal price
    required int? maxPrice,

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

    /// Order of the question in the theme, should be unique, starting from 0
    required int order,

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
    required SecretQuestionType type,

    /// Subtype of the secret question. customPrice means player can choose cost of question
    required SecretQuestionSubType subType,

    /// Allowed price options for customPrice subtype. Maximum 5 prices to choose
    required List<int>? allowedPrices,
    required PackageQuestionTransferType transferType,

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

    /// Order of the question in the theme, should be unique, starting from 0
    required int order,

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
    @Default('1.5')
    String priceMultiplier,
  }) = PackageQuestionUnionNoRisk;

  @FreezedUnionValue('choice')
  const factory PackageQuestionUnion.choice({
    required int? id,

    /// Order of the question in the theme, should be unique, starting from 0
    required int order,

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
  }) = PackageQuestionUnionChoice;

  @FreezedUnionValue('hidden')
  const factory PackageQuestionUnion.hidden({
    required int? id,

    /// Order of the question in the theme, should be unique, starting from 0
    required int order,

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
  }) = PackageQuestionUnionHidden;

  
  factory PackageQuestionUnion.fromJson(Map<String, Object?> json) => _$PackageQuestionUnionFromJson(json);
}
