// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'oq_metadata_structure.dart';
import 'oq_round_structure.dart';

part 'oq_content_structure.freezed.dart';
part 'oq_content_structure.g.dart';

@Freezed()
class OQContentStructure with _$OQContentStructure {
  const factory OQContentStructure({
    required OQMetadataStructure metadata,
    required List<OQRoundStructure> rounds,
  }) = _OQContentStructure;
  
  factory OQContentStructure.fromJson(Map<String, Object?> json) => _$OQContentStructureFromJson(json);
}
