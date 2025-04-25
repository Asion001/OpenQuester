// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package_answer_file.dart';
import 'package_question_file.dart';
import 'package_question_transfer_type.dart';
import 'package_question_union.dart';
import 'secret_question_sub_type.dart';
import 'secret_question_type.dart';

part 'secret_question.freezed.dart';
part 'secret_question.g.dart';

@Freezed()
class SecretQuestion with _$SecretQuestion {
  const factory SecretQuestion({
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
  }) = _SecretQuestion;
  
  factory SecretQuestion.fromJson(Map<String, Object?> json) => _$SecretQuestionFromJson(json);
}
