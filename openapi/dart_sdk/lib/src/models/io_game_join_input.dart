// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'io_game_join_input_role.dart';

part 'io_game_join_input.freezed.dart';
part 'io_game_join_input.g.dart';

@Freezed()
class IOGameJoinInput with _$IOGameJoinInput {
  const factory IOGameJoinInput({
    required String gameId,
    required IOGameJoinInputRole role,
  }) = _IOGameJoinInput;
  
  factory IOGameJoinInput.fromJson(Map<String, Object?> json) => _$IOGameJoinInputFromJson(json);
}
