// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'author.freezed.dart';
part 'author.g.dart';

@Freezed()
class Author with _$Author {
  const factory Author({
    required int id,
    required String name,
  }) = _Author;
  
  factory Author.fromJson(Map<String, Object?> json) => _$AuthorFromJson(json);
}
