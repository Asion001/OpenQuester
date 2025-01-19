// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'oq_file_content_structure.freezed.dart';
part 'oq_file_content_structure.g.dart';

@Freezed()
class OQFileContentStructure with _$OQFileContentStructure {
  const factory OQFileContentStructure({
    required String sha256,
    required String type,
  }) = _OQFileContentStructure;
  
  factory OQFileContentStructure.fromJson(Map<String, Object?> json) => _$OQFileContentStructureFromJson(json);
}
