// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package_entities_order.dart';
import 'package_question_file.dart';
import 'question_allowed_prices.dart';
import 'question_choice_answers.dart';
import 'question_max_price.dart';
import 'question_price_multiplier.dart';
import 'question_show_delay.dart';
import 'question_sub_type.dart';
import 'question_transfer_type.dart';
import 'question_type.dart';

part 'simple_package_question_data.freezed.dart';
part 'simple_package_question_data.g.dart';

/// Simplified question data for players and spectators, same as full question data but without answers
@Freezed()
abstract class SimplePackageQuestionData with _$SimplePackageQuestionData {
  const factory SimplePackageQuestionData({
    required int? id,
    required QuestionType type,
    required PackageEntitiesOrder order,

    /// Price is null only if price is hidden
    required int? price,

    /// Question text
    required String? text,

    /// Comment or note about the question
    required String? questionComment,
    required QuestionSubType subType,
    List<PackageQuestionFile?>? questionFiles,
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
  }) = _SimplePackageQuestionData;
  
  factory SimplePackageQuestionData.fromJson(Map<String, Object?> json) => _$SimplePackageQuestionDataFromJson(json);
}
