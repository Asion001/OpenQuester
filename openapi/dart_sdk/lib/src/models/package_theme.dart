// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package_entities_order.dart';
import 'package_question_union.dart';

part 'package_theme.freezed.dart';
part 'package_theme.g.dart';

/// Theme structure for package
@Freezed()
abstract class PackageTheme with _$PackageTheme {
  const factory PackageTheme({
    required int? id,
    required PackageEntitiesOrder order,

    /// Name of the theme
    required String name,

    /// Description of the theme
    required String? description,

    /// Questions in the theme
    required List<PackageQuestionUnion> questions,
  }) = _PackageTheme;
  
  factory PackageTheme.fromJson(Map<String, Object?> json) => _$PackageThemeFromJson(json);
}
