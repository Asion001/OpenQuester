// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum GamesSortBy {
  @JsonValue('id')
  id('id'),
  @JsonValue('title')
  title('title'),
  @JsonValue('createdAt')
  createdAt('createdAt'),
  @JsonValue('createdBy')
  createdBy('createdBy'),
  @JsonValue('maxPlayers')
  maxPlayers('maxPlayers'),
  @JsonValue('players')
  players('players'),
  @JsonValue('startedAt')
  startedAt('startedAt'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const GamesSortBy(this.json);

  factory GamesSortBy.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;

  String? toJson() => json;
}
