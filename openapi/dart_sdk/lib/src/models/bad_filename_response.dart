// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bad_filename_response.freezed.dart';
part 'bad_filename_response.g.dart';

@Freezed()
class BadFilenameResponse with _$BadFilenameResponse {
  const factory BadFilenameResponse({
    required String error,
  }) = _BadFilenameResponse;
  
  factory BadFilenameResponse.fromJson(Map<String, Object?> json) => _$BadFilenameResponseFromJson(json);
}
