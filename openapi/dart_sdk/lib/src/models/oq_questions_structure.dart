// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'oq_file.dart';
import 'oq_questions_structure_type.dart';

part 'oq_questions_structure.freezed.dart';
part 'oq_questions_structure.g.dart';

@Freezed()
class OQQuestionsStructure with _$OQQuestionsStructure {
  const factory OQQuestionsStructure({
    required int price,
    required OQQuestionsStructureType type,
    required String hostHint,
    String? text,
    String? playersHint,
    String? answerText,
    OQFile? questionFile,
    OQFile? answerFile,
  }) = _OQQuestionsStructure;
  
  factory OQQuestionsStructure.fromJson(Map<String, Object?> json) => _$OQQuestionsStructureFromJson(json);
}
