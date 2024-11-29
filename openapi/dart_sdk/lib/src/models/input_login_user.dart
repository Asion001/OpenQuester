// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_login_user.freezed.dart';
part 'input_login_user.g.dart';

@Freezed()
class InputLoginUser with _$InputLoginUser {
  const factory InputLoginUser({
    required String login,
    required String password,
  }) = _InputLoginUser;
  
  factory InputLoginUser.fromJson(Map<String, Object?> json) => _$InputLoginUserFromJson(json);
}
