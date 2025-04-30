// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'socket_io_game_join_meta.freezed.dart';
part 'socket_io_game_join_meta.g.dart';

@Freezed()
class SocketIOGameJoinMeta with _$SocketIOGameJoinMeta {
  const factory SocketIOGameJoinMeta({
    required String title,
  }) = _SocketIOGameJoinMeta;
  
  factory SocketIOGameJoinMeta.fromJson(Map<String, Object?> json) => _$SocketIOGameJoinMetaFromJson(json);
}
