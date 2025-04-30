// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_socket_io_auth.freezed.dart';
part 'input_socket_io_auth.g.dart';

@Freezed()
abstract class InputSocketIOAuth with _$InputSocketIOAuth {
  const factory InputSocketIOAuth({
    required String socketId,
  }) = _InputSocketIOAuth;
  
  factory InputSocketIOAuth.fromJson(Map<String, Object?> json) => _$InputSocketIOAuthFromJson(json);
}
