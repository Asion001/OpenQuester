// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_not_found_response.freezed.dart';
part 'package_not_found_response.g.dart';

@Freezed()
class PackageNotFoundResponse with _$PackageNotFoundResponse {
  const factory PackageNotFoundResponse({
    required String error,
  }) = _PackageNotFoundResponse;
  
  factory PackageNotFoundResponse.fromJson(Map<String, Object?> json) => _$PackageNotFoundResponseFromJson(json);
}
