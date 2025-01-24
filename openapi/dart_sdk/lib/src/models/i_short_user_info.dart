// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_short_user_info.freezed.dart';
part 'i_short_user_info.g.dart';

@Freezed()
class IShortUserInfo with _$IShortUserInfo {
  const factory IShortUserInfo({
    required int id,
    required String name,
  }) = _IShortUserInfo;
  
  factory IShortUserInfo.fromJson(Map<String, Object?> json) => _$IShortUserInfoFromJson(json);
}
