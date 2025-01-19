// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'oq_logo_file.dart';

part 'oq_metadata_structure.freezed.dart';
part 'oq_metadata_structure.g.dart';

@Freezed()
class OQMetadataStructure with _$OQMetadataStructure {
  const factory OQMetadataStructure({
    required String id,
    required String title,
    required String date,
    required String publisher,
    required OQLogoFile logo,
    required List<String> tags,
    required List<String> authors,
    required String language,
    required String restriction,
    required String comment,
  }) = _OQMetadataStructure;
  
  factory OQMetadataStructure.fromJson(Map<String, Object?> json) => _$OQMetadataStructureFromJson(json);
}
