// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_refresh_input.freezed.dart';
part 'auth_refresh_input.g.dart';

@Freezed()
class AuthRefreshInput with _$AuthRefreshInput {
  const factory AuthRefreshInput({
    @JsonKey(name: 'refresh_token')
    required String refreshToken,
  }) = _AuthRefreshInput;
  
  factory AuthRefreshInput.fromJson(Map<String, Object?> json) => _$AuthRefreshInputFromJson(json);
}
