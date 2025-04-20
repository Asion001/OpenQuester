// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_socket_io_chat_message.freezed.dart';
part 'input_socket_io_chat_message.g.dart';

@Freezed()
class InputSocketIOChatMessage with _$InputSocketIOChatMessage {
  const factory InputSocketIOChatMessage({
    required String message,
  }) = _InputSocketIOChatMessage;
  
  factory InputSocketIOChatMessage.fromJson(Map<String, Object?> json) => _$InputSocketIOChatMessageFromJson(json);
}
