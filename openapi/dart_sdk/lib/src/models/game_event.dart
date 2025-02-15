// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum GameEvent {
  @JsonValue('created')
  created('created'),
  @JsonValue('changed')
  changed('changed'),
  @JsonValue('deleted')
  deleted('deleted'),
  @JsonValue('started')
  started('started'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const GameEvent(this.json);

  factory GameEvent.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;

  String? toJson() => json;
}
