// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'object4.freezed.dart';
part 'object4.g.dart';

@Freezed()
class Object4 with _$Object4 {
  const factory Object4({
    @JsonKey(name: 'refresh_token')
    required String refreshToken,
  }) = _Object4;
  
  factory Object4.fromJson(Map<String, Object?> json) => _$Object4FromJson(json);
}
