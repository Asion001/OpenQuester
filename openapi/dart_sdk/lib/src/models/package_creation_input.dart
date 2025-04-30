// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package_create_input_data.dart';

part 'package_creation_input.freezed.dart';
part 'package_creation_input.g.dart';

@Freezed()
abstract class PackageCreationInput with _$PackageCreationInput {
  const factory PackageCreationInput({
    required PackageCreateInputData content,
  }) = _PackageCreationInput;
  
  factory PackageCreationInput.fromJson(Map<String, Object?> json) => _$PackageCreationInputFromJson(json);
}
