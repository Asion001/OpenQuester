// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_io_chat_message_event_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocketIOChatMessageEventPayloadImpl
    _$$SocketIOChatMessageEventPayloadImplFromJson(Map<String, dynamic> json) =>
        _$SocketIOChatMessageEventPayloadImpl(
          message: json['message'] as String,
          user: (json['user'] as num).toInt(),
          timestamp: DateTime.parse(json['timestamp'] as String),
        );

Map<String, dynamic> _$$SocketIOChatMessageEventPayloadImplToJson(
        _$SocketIOChatMessageEventPayloadImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
      'timestamp': instance.timestamp.toIso8601String(),
    };
