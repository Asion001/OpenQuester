// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'file_item.dart';

part 'package_answer_file.freezed.dart';
part 'package_answer_file.g.dart';

/// Answer media file structure for package creation
@Freezed()
class PackageAnswerFile with _$PackageAnswerFile {
  const factory PackageAnswerFile({
    required int? id,

    /// Order of the answer file in the question, should be unique, starting from 0
    required int order,
    required FileItem file,

    /// Display duration in milliseconds
    @Default(5000)
    int displayTime,
  }) = _PackageAnswerFile;
  
  factory PackageAnswerFile.fromJson(Map<String, Object?> json) => _$PackageAnswerFileFromJson(json);
}
