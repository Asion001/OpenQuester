// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_update_user.freezed.dart';
part 'input_update_user.g.dart';

@Freezed()
class InputUpdateUser with _$InputUpdateUser {
  const factory InputUpdateUser({
    required String? username,
    required String? email,
    required DateTime? birthday,
    required String? avatar,
  }) = _InputUpdateUser;
  
  factory InputUpdateUser.fromJson(Map<String, Object?> json) => _$InputUpdateUserFromJson(json);
}
