// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'oq_file_content_structure.dart';

part 'oq_logo_file.freezed.dart';
part 'oq_logo_file.g.dart';

@Freezed()
class OQLogoFile with _$OQLogoFile {
  const factory OQLogoFile({
    required OQFileContentStructure file,
  }) = _OQLogoFile;
  
  factory OQLogoFile.fromJson(Map<String, Object?> json) => _$OQLogoFileFromJson(json);
}
