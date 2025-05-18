// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'file_item.dart';
import 'package_entities_order.dart';

part 'question_choice_answers.freezed.dart';
part 'question_choice_answers.g.dart';

/// Multiple choice options; minimum 2, maximum 8 answers
@Freezed()
abstract class QuestionChoiceAnswers with _$QuestionChoiceAnswers {
  const factory QuestionChoiceAnswers({
    required int? id,
    required PackageEntitiesOrder order,

    /// Text of the answer option
    required String? text,

    /// File associated with the answer option
    FileItem? file,
  }) = _QuestionChoiceAnswers;
  
  factory QuestionChoiceAnswers.fromJson(Map<String, Object?> json) => _$QuestionChoiceAnswersFromJson(json);
}
