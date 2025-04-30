// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_corrupted_response.freezed.dart';
part 'package_corrupted_response.g.dart';

@Freezed()
abstract class PackageCorruptedResponse with _$PackageCorruptedResponse {
  const factory PackageCorruptedResponse({
    required String error,
  }) = _PackageCorruptedResponse;
  
  factory PackageCorruptedResponse.fromJson(Map<String, Object?> json) => _$PackageCorruptedResponseFromJson(json);
}
