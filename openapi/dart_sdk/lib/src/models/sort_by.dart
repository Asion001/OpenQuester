// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum SortBy {
  @JsonValue('id')
  id('id'),
  @JsonValue('is_deleted')
  isDeleted('is_deleted'),
  @JsonValue('created_at')
  createdAt('created_at'),
  @JsonValue('name')
  name('name'),
  @JsonValue('email')
  email('email'),
  @JsonValue('updated_at')
  updatedAt('updated_at'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const SortBy(this.json);

  factory SortBy.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;

  String? toJson() => json;
}
