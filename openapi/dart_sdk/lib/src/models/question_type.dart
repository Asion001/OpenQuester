// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

/// Type of question within a package
@JsonEnum()
enum QuestionType {
  @JsonValue('simple')
  simple('simple'),
  @JsonValue('stake')
  stake('stake'),
  @JsonValue('secret')
  secret('secret'),
  @JsonValue('noRisk')
  noRisk('noRisk'),
  @JsonValue('hidden')
  hidden('hidden'),
  @JsonValue('choice')
  choice('choice'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const QuestionType(this.json);

  factory QuestionType.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;

  String? toJson() => json;
}
