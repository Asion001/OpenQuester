// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'oq_file_content_structure.dart';

part 'oq_file.freezed.dart';
part 'oq_file.g.dart';

@Freezed()
class OQFile with _$OQFile {
  const factory OQFile({
    required OQFileContentStructure file,
    int? displayTime,
    int? answerDelay,
  }) = _OQFile;
  
  factory OQFile.fromJson(Map<String, Object?> json) => _$OQFileFromJson(json);
}
