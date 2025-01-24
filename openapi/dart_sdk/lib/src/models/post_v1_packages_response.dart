// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_v1_packages_response.freezed.dart';
part 'post_v1_packages_response.g.dart';

@Freezed()
class PostV1PackagesResponse with _$PostV1PackagesResponse {
  const factory PostV1PackagesResponse({
    required String filename,
  }) = _PostV1PackagesResponse;
  
  factory PostV1PackagesResponse.fromJson(Map<String, Object?> json) => _$PostV1PackagesResponseFromJson(json);
}
