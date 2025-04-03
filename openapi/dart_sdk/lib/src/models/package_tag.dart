// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_tag.freezed.dart';
part 'package_tag.g.dart';

/// Individual tag object
@Freezed()
class PackageTag with _$PackageTag {
  const factory PackageTag({
    required int id,

    /// A single tag for the package
    required String tag,
  }) = _PackageTag;
  
  factory PackageTag.fromJson(Map<String, Object?> json) => _$PackageTagFromJson(json);
}
