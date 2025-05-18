// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'age_restriction.dart';
import 'package_logo_file_item.dart';
import 'package_tag.dart';
import 'short_user_info.dart';

part 'package_list_item.freezed.dart';
part 'package_list_item.g.dart';

@Freezed()
abstract class PackageListItem with _$PackageListItem {
  const factory PackageListItem({
    required int id,
    required String title,
    required String? description,
    required DateTime createdAt,
    required ShortUserInfo author,

    /// Package age restriction
    required AgeRestriction ageRestriction,
    required String? language,

    /// Tags for the package. Can be null or an array of tag objects
    required List<PackageTag>? tags,

    /// Logo file for the package
    PackageLogoFileItem? logo,
  }) = _PackageListItem;
  
  factory PackageListItem.fromJson(Map<String, Object?> json) => _$PackageListItemFromJson(json);
}
