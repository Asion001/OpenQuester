// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package_item_age_restriction.dart';
import 'short_user_info.dart';

part 'package_item.freezed.dart';
part 'package_item.g.dart';

@Freezed()
class PackageItem with _$PackageItem {
  const factory PackageItem({
    required int id,
    required String title,
    required PackageItemAgeRestriction ageRestriction,
    required DateTime createdAt,
    required int rounds,
    required ShortUserInfo author,
    required List<String> tags,
  }) = _PackageItem;
  
  factory PackageItem.fromJson(Map<String, Object?> json) => _$PackageItemFromJson(json);
}
