// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_socket_auth.freezed.dart';
part 'input_socket_auth.g.dart';

@Freezed()
class InputSocketAuth with _$InputSocketAuth {
  const factory InputSocketAuth({
    required String socketId,
  }) = _InputSocketAuth;
  
  factory InputSocketAuth.fromJson(Map<String, Object?> json) => _$InputSocketAuthFromJson(json);
}
