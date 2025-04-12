// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum IOGameJoinInputRole {
  @JsonValue('showman')
  showman('showman'),
  @JsonValue('player')
  player('player'),
  @JsonValue('spectator')
  spectator('spectator'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const IOGameJoinInputRole(this.json);

  factory IOGameJoinInputRole.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;

  String? toJson() => json;
}
