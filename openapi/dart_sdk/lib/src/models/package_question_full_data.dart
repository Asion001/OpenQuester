// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package_answer_file.dart';
import 'package_entities_order.dart';
import 'package_question_file.dart';
import 'question_allowed_prices.dart';
import 'question_answer_text.dart';
import 'question_choice_answers.dart';
import 'question_max_price.dart';
import 'question_price_multiplier.dart';
import 'question_show_delay.dart';
import 'question_sub_type.dart';
import 'question_transfer_type.dart';
import 'question_type.dart';

part 'package_question_full_data.freezed.dart';
part 'package_question_full_data.g.dart';

/// Full question data for showman
@Freezed()
abstract class PackageQuestionFullData with _$PackageQuestionFullData {
  const factory PackageQuestionFullData({
    required int? id,
    required QuestionType type,
    required PackageEntitiesOrder order,

    /// Price is null only if price is hidden
    required int? price,

    /// Question text
    required String? text,

    /// Hint for the answer
    required String? answerHint,

    /// Comment or note about the question
    required String? questionComment,
    required QuestionSubType subType,
    QuestionAnswerText? answerText,
    List<PackageQuestionFile?>? questionFiles,
    List<PackageAnswerFile?>? answerFiles,
    QuestionMaxPrice? maxPrice,
    QuestionAllowedPrices? allowedPrices,
    QuestionTransferType? transferType,
    QuestionPriceMultiplier? priceMultiplier,
    QuestionShowDelay? showDelay,
    List<QuestionChoiceAnswers?>? answers,

    /// Whether the question is hidden
    @Default(false)
    bool isHidden,

    /// Delay in milliseconds before being able to answer, if applicable
    @Default(4000)
    int answerDelay,
  }) = _PackageQuestionFullData;
  
  factory PackageQuestionFullData.fromJson(Map<String, Object?> json) => _$PackageQuestionFullDataFromJson(json);
}
