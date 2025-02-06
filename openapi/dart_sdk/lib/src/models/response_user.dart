// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'permissions.dart';

part 'response_user.freezed.dart';
part 'response_user.g.dart';

@Freezed()
class ResponseUser with _$ResponseUser {
  const factory ResponseUser({
    required int id,
    required String username,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @JsonKey(name: 'updated_at')
    required DateTime updatedAt,
    @JsonKey(name: 'is_deleted')
    required bool isDeleted,
    required List<Permissions> permissions,
    String? email,
    DateTime? birthday,
    String? avatar,
  }) = _ResponseUser;
  
  factory ResponseUser.fromJson(Map<String, Object?> json) => _$ResponseUserFromJson(json);
}
