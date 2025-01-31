// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_register_user.freezed.dart';
part 'input_register_user.g.dart';

@Freezed()
class InputRegisterUser with _$InputRegisterUser {
  const factory InputRegisterUser({
    required String name,
    required String email,
    required String password,
    DateTime? birthday,
    String? avatar,
  }) = _InputRegisterUser;
  
  factory InputRegisterUser.fromJson(Map<String, Object?> json) => _$InputRegisterUserFromJson(json);
}
