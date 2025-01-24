// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'player_role.dart';

part 'player.freezed.dart';
part 'player.g.dart';

@Freezed()
class Player with _$Player {
  const factory Player({
    required int userId,
    required int score,
    required PlayerRole role,
    required bool connected,
  }) = _Player;
  
  factory Player.fromJson(Map<String, Object?> json) => _$PlayerFromJson(json);
}
