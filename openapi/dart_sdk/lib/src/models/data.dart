// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@Freezed()
class Data with _$Data {
  const factory Data({
    required String id,
  }) = _Data;
  
  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
}
