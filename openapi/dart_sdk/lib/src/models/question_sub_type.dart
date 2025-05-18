// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

/// Possible subType of given question
@JsonEnum()
enum QuestionSubType {
  @JsonValue('simple')
  simple('simple'),
  @JsonValue('customPrice')
  customPrice('customPrice'),
  @JsonValue('empty')
  empty('empty'),
  @JsonValue('forEveryone')
  forEveryone('forEveryone'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const QuestionSubType(this.json);

  factory QuestionSubType.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;

  String? toJson() => json;
}
