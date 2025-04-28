// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package_file_type.dart';

part 'file_item.freezed.dart';
part 'file_item.g.dart';

/// Basic file metadata
@Freezed()
abstract class FileItem with _$FileItem {
  const factory FileItem({
    required int? id,

    /// MD5 hash of the file
    required String md5,
    required PackageFileType type,

    /// GET link for file
    required String? link,
  }) = _FileItem;
  
  factory FileItem.fromJson(Map<String, Object?> json) => _$FileItemFromJson(json);
}
