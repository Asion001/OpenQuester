// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package_entities_order.dart';
import 'socket_io_game_state_question_data.dart';

part 'socket_io_game_state_theme_data.freezed.dart';
part 'socket_io_game_state_theme_data.g.dart';

/// Info about theme of the round
@Freezed()
abstract class SocketIOGameStateThemeData with _$SocketIOGameStateThemeData {
  const factory SocketIOGameStateThemeData({
    required PackageEntitiesOrder order,
    required String name,
    required String? description,
    required List<SocketIOGameStateQuestionData> questions,
  }) = _SocketIOGameStateThemeData;
  
  factory SocketIOGameStateThemeData.fromJson(Map<String, Object?> json) => _$SocketIOGameStateThemeDataFromJson(json);
}
