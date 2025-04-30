// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'socket_io_chat_message_content.freezed.dart';
part 'socket_io_chat_message_content.g.dart';

@Freezed()
abstract class SocketIOChatMessageContent with _$SocketIOChatMessageContent {
  const factory SocketIOChatMessageContent({
    required String message,
  }) = _SocketIOChatMessageContent;
  
  factory SocketIOChatMessageContent.fromJson(Map<String, Object?> json) => _$SocketIOChatMessageContentFromJson(json);
}
