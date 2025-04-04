// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

/// Type of media file for package-related files
@JsonEnum()
enum PackageFileType {
  @JsonValue('video')
  video('video'),
  @JsonValue('audio')
  audio('audio'),
  @JsonValue('image')
  image('image'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const PackageFileType(this.json);

  factory PackageFileType.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;

  String? toJson() => json;
}
