// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

/// Subtype of the secret question. customPrice means player can choose cost of question
@JsonEnum()
enum SecretQuestionSubType {
  @JsonValue('simple')
  simple('simple'),
  @JsonValue('customPrice')
  customPrice('customPrice'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const SecretQuestionSubType(this.json);

  factory SecretQuestionSubType.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;

  String? toJson() => json;
}
