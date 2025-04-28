// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_io_chat_message_event_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SocketIOChatMessageEventPayload _$SocketIOChatMessageEventPayloadFromJson(
        Map<String, dynamic> json) =>
    _SocketIOChatMessageEventPayload(
      message: json['message'] as String,
      user: (json['user'] as num).toInt(),
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$SocketIOChatMessageEventPayloadToJson(
        _SocketIOChatMessageEventPayload instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
      'timestamp': instance.timestamp.toIso8601String(),
    };
