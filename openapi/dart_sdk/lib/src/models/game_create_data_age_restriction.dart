// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum GameCreateDataAgeRestriction {
  @JsonValue('A18')
  a18('A18'),
  @JsonValue('A16')
  a16('A16'),
  @JsonValue('A12')
  a12('A12'),
  @JsonValue('NONE')
  none('NONE'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const GameCreateDataAgeRestriction(this.json);

  factory GameCreateDataAgeRestriction.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;

  String? toJson() => json;
}
