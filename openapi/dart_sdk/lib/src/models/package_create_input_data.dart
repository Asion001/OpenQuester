// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'age_restriction.dart';
import 'package_logo_file_input.dart';
import 'package_round.dart';
import 'package_tag.dart';

part 'package_create_input_data.freezed.dart';
part 'package_create_input_data.g.dart';

/// Input for creating a new package; author is set via authentication
@Freezed()
class PackageCreateInputData with _$PackageCreateInputData {
  const factory PackageCreateInputData({
    /// Title of the package
    required String title,

    /// Description of the package
    required String? description,

    /// Language of the package
    required String? language,

    /// Age restriction
    required AgeRestriction ageRestriction,

    /// Tags for the package. Can be null or an array of tag objects
    required List<PackageTag>? tags,

    /// Rounds in the package
    required List<PackageRound> rounds,

    /// Logo file for the package
    PackageLogoFileInput? logo,
  }) = _PackageCreateInputData;
  
  factory PackageCreateInputData.fromJson(Map<String, Object?> json) => _$PackageCreateInputDataFromJson(json);
}
