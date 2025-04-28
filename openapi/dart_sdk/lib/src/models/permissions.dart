// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'permissions.freezed.dart';
part 'permissions.g.dart';

@Freezed()
abstract class Permissions with _$Permissions {
  const factory Permissions({
    required int id,
    required String name,
  }) = _Permissions;
  
  factory Permissions.fromJson(Map<String, Object?> json) => _$PermissionsFromJson(json);
}
