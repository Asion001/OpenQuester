// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'oq_theme_structure.dart';

part 'oq_round_structure.freezed.dart';
part 'oq_round_structure.g.dart';

@Freezed()
class OQRoundStructure with _$OQRoundStructure {
  const factory OQRoundStructure({
    required String name,
    required List<OQThemeStructure> themes,
  }) = _OQRoundStructure;
  
  factory OQRoundStructure.fromJson(Map<String, Object?> json) => _$OQRoundStructureFromJson(json);
}
