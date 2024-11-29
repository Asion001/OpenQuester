// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'permissions.dart';

part 'response_private_user.freezed.dart';
part 'response_private_user.g.dart';

@Freezed()
class ResponsePrivateUser with _$ResponsePrivateUser {
  const factory ResponsePrivateUser({
    required num id,
    required String name,
    required String email,
    required DateTime birthday,
    required String avatar,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @JsonKey(name: 'updated_at')
    required DateTime updatedAt,
    @JsonKey(name: 'is_deleted')
    required bool isDeleted,
    required List<Permissions> permissions,
  }) = _ResponsePrivateUser;
  
  factory ResponsePrivateUser.fromJson(Map<String, Object?> json) => _$ResponsePrivateUserFromJson(json);
}
