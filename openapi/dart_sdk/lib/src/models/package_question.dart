// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package_answer_file.dart';
import 'package_entities_order.dart';
import 'package_question_file.dart';

part 'package_question.freezed.dart';
part 'package_question.g.dart';

/// Base properties for all question types
@Freezed()
abstract class PackageQuestion with _$PackageQuestion {
  const factory PackageQuestion({
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

    /// Whether the question is hidden
    @Default(false)
    bool isHidden,

    /// Delay in milliseconds before being able to answer, if applicable
    @Default(4000)
    int answerDelay,
  }) = _PackageQuestion;
  
  factory PackageQuestion.fromJson(Map<String, Object?> json) => _$PackageQuestionFromJson(json);
}
