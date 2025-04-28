// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package_answer_file.dart';
import 'package_entities_order.dart';
import 'package_question_file.dart';
import 'package_question_union.dart';
import 'stake_question_sub_type.dart';
import 'stake_question_type.dart';

part 'stake_question.freezed.dart';
part 'stake_question.g.dart';

@Freezed()
class StakeQuestion with _$StakeQuestion {
  const factory StakeQuestion({
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
  }) = _StakeQuestion;
  
  factory StakeQuestion.fromJson(Map<String, Object?> json) => _$StakeQuestionFromJson(json);
}
