// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'oq_questions_structure.dart';

part 'oq_theme_structure.freezed.dart';
part 'oq_theme_structure.g.dart';

@Freezed()
class OQThemeStructure with _$OQThemeStructure {
  const factory OQThemeStructure({
    required String name,
    required List<OQQuestionsStructure> questions,
    String? comment,
  }) = _OQThemeStructure;
  
  factory OQThemeStructure.fromJson(Map<String, Object?> json) => _$OQThemeStructureFromJson(json);
}
