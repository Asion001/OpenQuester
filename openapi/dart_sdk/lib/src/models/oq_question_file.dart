// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'oq_file_content_structure.dart';

part 'oq_question_file.freezed.dart';
part 'oq_question_file.g.dart';

@Freezed()
class OQQuestionFile with _$OQQuestionFile {
  const factory OQQuestionFile({
    required OQFileContentStructure file,
    required num displayTime,
    required num answerDelay,
  }) = _OQQuestionFile;
  
  factory OQQuestionFile.fromJson(Map<String, Object?> json) => _$OQQuestionFileFromJson(json);
}
