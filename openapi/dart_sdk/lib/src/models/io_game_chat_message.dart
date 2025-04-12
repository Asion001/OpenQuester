// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'io_game_chat_message.freezed.dart';
part 'io_game_chat_message.g.dart';

@Freezed()
class IOGameChatMessage with _$IOGameChatMessage {
  const factory IOGameChatMessage({
    required int user,
    required String username,
    required int timestamp,
    required String message,
  }) = _IOGameChatMessage;
  
  factory IOGameChatMessage.fromJson(Map<String, Object?> json) => _$IOGameChatMessageFromJson(json);
}
