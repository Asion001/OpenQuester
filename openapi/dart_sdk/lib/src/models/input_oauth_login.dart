// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'input_oauth_login_oauth_provider.dart';

part 'input_oauth_login.freezed.dart';
part 'input_oauth_login.g.dart';

@Freezed()
class InputOauthLogin with _$InputOauthLogin {
  const factory InputOauthLogin({
    required String token,
    required String? tokenSchema,
    required InputOauthLoginOauthProvider oauthProvider,
  }) = _InputOauthLogin;
  
  factory InputOauthLogin.fromJson(Map<String, Object?> json) => _$InputOauthLoginFromJson(json);
}
