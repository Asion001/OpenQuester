// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package_entities_order.dart';

part 'socket_io_game_state_question_data.freezed.dart';
part 'socket_io_game_state_question_data.g.dart';

/// Info about question of the theme
@Freezed()
abstract class SocketIOGameStateQuestionData with _$SocketIOGameStateQuestionData {
  const factory SocketIOGameStateQuestionData({
    required int id,
    required PackageEntitiesOrder order,

    /// Price is null only if price is hidden
    required int? price,

    /// Comment that clarify what have to be answered on this question
    required String? questionComment,

    /// Marks if question was played before to disable picking action
    required bool isPlayed,
  }) = _SocketIOGameStateQuestionData;
  
  factory SocketIOGameStateQuestionData.fromJson(Map<String, Object?> json) => _$SocketIOGameStateQuestionDataFromJson(json);
}
