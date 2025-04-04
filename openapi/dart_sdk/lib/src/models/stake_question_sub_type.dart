// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

/// Subtype of the stake question. simple is basically auction. forEveryone means everyone place some amount of money and write answer
@JsonEnum()
enum StakeQuestionSubType {
  @JsonValue('simple')
  simple('simple'),
  @JsonValue('forEveryone')
  forEveryone('forEveryone'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const StakeQuestionSubType(this.json);

  factory StakeQuestionSubType.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;

  String? toJson() => json;
}
