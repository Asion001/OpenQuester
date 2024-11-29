// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_auth_data.freezed.dart';
part 'response_auth_data.g.dart';

@Freezed()
class ResponseAuthData with _$ResponseAuthData {
  const factory ResponseAuthData({
    @JsonKey(name: 'access_token')
    required String accessToken,
    @JsonKey(name: 'refresh_token')
    required String refreshToken,
  }) = _ResponseAuthData;
  
  factory ResponseAuthData.fromJson(Map<String, Object?> json) => _$ResponseAuthDataFromJson(json);
}
