// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package_file_type.dart';

part 'file_input.freezed.dart';
part 'file_input.g.dart';

/// Basic file metadata for upload, used in place of full File model for input
@Freezed()
abstract class FileInput with _$FileInput {
  const factory FileInput({
    /// MD5 hash of the file
    required String md5,
    required PackageFileType type,
  }) = _FileInput;
  
  factory FileInput.fromJson(Map<String, Object?> json) => _$FileInputFromJson(json);
}
