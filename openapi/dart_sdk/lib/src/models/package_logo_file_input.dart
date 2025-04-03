// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'file_input.dart';

part 'package_logo_file_input.freezed.dart';
part 'package_logo_file_input.g.dart';

/// Logo file structure for package creation. Only images acceptable
@Freezed()
class PackageLogoFileInput with _$PackageLogoFileInput {
  const factory PackageLogoFileInput({
    required FileInput file,
  }) = _PackageLogoFileInput;
  
  factory PackageLogoFileInput.fromJson(Map<String, Object?> json) => _$PackageLogoFileInputFromJson(json);
}
