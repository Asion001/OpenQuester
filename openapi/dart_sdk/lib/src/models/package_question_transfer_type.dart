// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

/// Transfer type for secret questions
@JsonEnum()
enum PackageQuestionTransferType {
  @JsonValue('any')
  any('any'),
  @JsonValue('exceptCurrent')
  exceptCurrent('exceptCurrent'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const PackageQuestionTransferType(this.json);

  factory PackageQuestionTransferType.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;

  String? toJson() => json;
}
