// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'file_item.dart';

part 'package_logo_file_item.freezed.dart';
part 'package_logo_file_item.g.dart';

/// Logo file structure for package creation. Only images acceptable
@Freezed()
abstract class PackageLogoFileItem with _$PackageLogoFileItem {
  const factory PackageLogoFileItem({
    required FileItem file,
  }) = _PackageLogoFileItem;
  
  factory PackageLogoFileItem.fromJson(Map<String, Object?> json) => _$PackageLogoFileItemFromJson(json);
}
