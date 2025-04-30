// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package_entities_order.dart';
import 'file_item.dart';

part 'answers.freezed.dart';
part 'answers.g.dart';

@Freezed()
class Answers with _$Answers {
  const factory Answers({
    required int? id,
    required PackageEntitiesOrder order,

    /// Text of the answer option
    required String? text,

    /// File associated with the answer option
    FileItem? file,
  }) = _Answers;
  
  factory Answers.fromJson(Map<String, Object?> json) => _$AnswersFromJson(json);
}
