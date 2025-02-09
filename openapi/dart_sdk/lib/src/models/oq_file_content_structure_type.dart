// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum OQFileContentStructureType {
  @JsonValue('image')
  image('image'),
  @JsonValue('video')
  video('video'),
  @JsonValue('audio')
  audio('audio'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const OQFileContentStructureType(this.json);

  factory OQFileContentStructureType.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;

  String? toJson() => json;
}
