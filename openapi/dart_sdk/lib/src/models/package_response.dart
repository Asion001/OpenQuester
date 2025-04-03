// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'age_restriction.dart';
import 'package_logo_file_item.dart';
import 'package_round.dart';
import 'package_tag.dart';
import 'short_user_info.dart';

part 'package_response.freezed.dart';
part 'package_response.g.dart';

@Freezed()
class PackageResponse with _$PackageResponse {
  const factory PackageResponse({
    required int id,
    required String title,
    required String? description,
    required DateTime createdAt,
    required ShortUserInfo author,

    /// Package age restriction
    required AgeRestriction ageRestriction,
    required String? language,

    /// Rounds in the package
    required List<PackageRound> rounds,

    /// Tags for the package. Can be null or an array of tag objects
    required List<PackageTag>? tags,

    /// Logo file for the package
    PackageLogoFileItem? logo,
  }) = _PackageResponse;
  
  factory PackageResponse.fromJson(Map<String, Object?> json) => _$PackageResponseFromJson(json);
}
