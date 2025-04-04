// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'age_restriction.dart';
import 'package_logo_file_item.dart';
import 'short_user_info.dart';

part 'package_item.freezed.dart';
part 'package_item.g.dart';

@Freezed()
class PackageItem with _$PackageItem {
  const factory PackageItem({
    required int id,
    required String title,
    required String description,
    required DateTime createdAt,
    required ShortUserInfo author,

    /// Package age restriction
    required AgeRestriction ageRestriction,
    required String language,
    required int roundsCount,
    required int questionsCount,
    required List<String> tags,

    /// Logo file for the package
    PackageLogoFileItem? logo,
  }) = _PackageItem;
  
  factory PackageItem.fromJson(Map<String, Object?> json) => _$PackageItemFromJson(json);
}
