// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'socket_io_game_join_input_role.dart';

part 'socket_io_game_join_input.freezed.dart';
part 'socket_io_game_join_input.g.dart';

@Freezed()
class SocketIOGameJoinInput with _$SocketIOGameJoinInput {
  const factory SocketIOGameJoinInput({
    required String gameId,
    required SocketIOGameJoinInputRole role,
  }) = _SocketIOGameJoinInput;
  
  factory SocketIOGameJoinInput.fromJson(Map<String, Object?> json) => _$SocketIOGameJoinInputFromJson(json);
}
