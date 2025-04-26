// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package_answer_file.dart';
import 'package_question_file.dart';
import 'package_question_union.dart';
import 'simple_question_type.dart';

part 'simple_question.freezed.dart';
part 'simple_question.g.dart';

@Freezed()
class SimpleQuestion with _$SimpleQuestion {
  const factory SimpleQuestion({
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
  }) = _SimpleQuestion;
  
  factory SimpleQuestion.fromJson(Map<String, Object?> json) => _$SimpleQuestionFromJson(json);
}
