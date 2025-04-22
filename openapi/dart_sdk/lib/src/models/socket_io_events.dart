// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum SocketIOEvents {
  @JsonValue('error')
  error('error'),
  @JsonValue('disconnect')
  disconnect('disconnect'),
  @JsonValue('connection')
  connection('connection'),
  @JsonValue('games')
  games('games'),
  @JsonValue('chat-message')
  chatMessage('chat-message'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const SocketIOEvents(this.json);

  factory SocketIOEvents.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;

  String? toJson() => json;
}
