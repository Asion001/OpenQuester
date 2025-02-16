// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'oq_file_content_structure.dart';

part 'oq_answer_file.freezed.dart';
part 'oq_answer_file.g.dart';

@Freezed()
class OQAnswerFile with _$OQAnswerFile {
  const factory OQAnswerFile({
    required OQFileContentStructure file,
    int? displayTime,
  }) = _OQAnswerFile;
  
  factory OQAnswerFile.fromJson(Map<String, Object?> json) => _$OQAnswerFileFromJson(json);
}
