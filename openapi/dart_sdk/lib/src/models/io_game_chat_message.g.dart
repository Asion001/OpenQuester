// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'io_game_chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IOGameChatMessageImpl _$$IOGameChatMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$IOGameChatMessageImpl(
      user: (json['user'] as num).toInt(),
      username: json['username'] as String,
      timestamp: (json['timestamp'] as num).toInt(),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$IOGameChatMessageImplToJson(
        _$IOGameChatMessageImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'username': instance.username,
      'timestamp': instance.timestamp,
      'message': instance.message,
    };
