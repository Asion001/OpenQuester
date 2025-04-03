// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

/// Subtype of the no-risk question. forEveryone means everyone answers it, basically giving chances for everyone, instead of one player
@JsonEnum()
enum NoRiskQuestionSubType {
  @JsonValue('simple')
  simple('simple'),
  @JsonValue('forEveryone')
  forEveryone('forEveryone'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const NoRiskQuestionSubType(this.json);

  factory NoRiskQuestionSubType.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;

  String? toJson() => json;
}
