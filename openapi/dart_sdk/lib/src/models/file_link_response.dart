// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_link_response.freezed.dart';
part 'file_link_response.g.dart';

@Freezed()
abstract class FileLinkResponse with _$FileLinkResponse {
  const factory FileLinkResponse({
    required String url,
  }) = _FileLinkResponse;
  
  factory FileLinkResponse.fromJson(Map<String, Object?> json) => _$FileLinkResponseFromJson(json);
}
