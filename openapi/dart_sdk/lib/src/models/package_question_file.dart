// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'file_item.dart';

part 'package_question_file.freezed.dart';
part 'package_question_file.g.dart';

/// Question media file structure for package creation
@Freezed()
class PackageQuestionFile with _$PackageQuestionFile {
  const factory PackageQuestionFile({
    required int? id,

    /// Order of the question file in the question, should be unique, starting from 0
    required int order,
    required FileItem file,

    /// Display duration in milliseconds
    @Default(5000)
    int displayTime,
  }) = _PackageQuestionFile;
  
  factory PackageQuestionFile.fromJson(Map<String, Object?> json) => _$PackageQuestionFileFromJson(json);
}
