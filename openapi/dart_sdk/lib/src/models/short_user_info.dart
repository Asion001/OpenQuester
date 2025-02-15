// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'short_user_info.freezed.dart';
part 'short_user_info.g.dart';

@Freezed()
class ShortUserInfo with _$ShortUserInfo {
  const factory ShortUserInfo({
    required int id,
    required String username,
  }) = _ShortUserInfo;
  
  factory ShortUserInfo.fromJson(Map<String, Object?> json) => _$ShortUserInfoFromJson(json);
}
