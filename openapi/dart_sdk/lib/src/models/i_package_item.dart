// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'i_package_item_age_restriction.dart';
import 'i_short_user_info.dart';

part 'i_package_item.freezed.dart';
part 'i_package_item.g.dart';

@Freezed()
class IPackageItem with _$IPackageItem {
  const factory IPackageItem({
    required int id,
    required String title,
    required IPackageItemAgeRestriction ageRestriction,
    required DateTime createdAt,
    required int rounds,
    required IShortUserInfo author,
  }) = _IPackageItem;
  
  factory IPackageItem.fromJson(Map<String, Object?> json) => _$IPackageItemFromJson(json);
}
