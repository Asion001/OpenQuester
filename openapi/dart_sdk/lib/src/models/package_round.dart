// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package_theme.dart';

part 'package_round.freezed.dart';
part 'package_round.g.dart';

/// Round structure for package
@Freezed()
class PackageRound with _$PackageRound {
  const factory PackageRound({
    required int? id,

    /// Order of the round in the package, should be unique, starting from 0
    required int order,

    /// Name of the round
    required String name,

    /// Description of the round
    required String? description,

    /// Themes in the round
    required List<PackageTheme> themes,
  }) = _PackageRound;
  
  factory PackageRound.fromJson(Map<String, Object?> json) => _$PackageRoundFromJson(json);
}
