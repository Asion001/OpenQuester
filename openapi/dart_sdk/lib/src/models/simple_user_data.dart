// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'simple_user_data.freezed.dart';
part 'simple_user_data.g.dart';

@Freezed()
class SimpleUserData with _$SimpleUserData {
  const factory SimpleUserData({
    required num id,
    required String username,
    required String? avatar,
  }) = _SimpleUserData;
  
  factory SimpleUserData.fromJson(Map<String, Object?> json) => _$SimpleUserDataFromJson(json);
}
