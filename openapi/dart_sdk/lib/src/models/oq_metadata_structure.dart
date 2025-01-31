// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'oq_logo_file.dart';
import 'oq_metadata_structure_age_restriction.dart';

part 'oq_metadata_structure.freezed.dart';
part 'oq_metadata_structure.g.dart';

@Freezed()
class OQMetadataStructure with _$OQMetadataStructure {
  const factory OQMetadataStructure({
    required String id,
    required String title,
    required DateTime createdAt,
    required OQMetadataStructureAgeRestriction ageRestriction,
    required List<String> tags,
    required int author,
    OQLogoFile? logo,
    String? language,
    String? comment,
  }) = _OQMetadataStructure;
  
  factory OQMetadataStructure.fromJson(Map<String, Object?> json) => _$OQMetadataStructureFromJson(json);
}
