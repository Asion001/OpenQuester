// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'oq_content_structure.dart';

part 'package_creation_input.freezed.dart';
part 'package_creation_input.g.dart';

@Freezed()
class PackageCreationInput with _$PackageCreationInput {
  const factory PackageCreationInput({
    required OQContentStructure content,
  }) = _PackageCreationInput;
  
  factory PackageCreationInput.fromJson(Map<String, Object?> json) => _$PackageCreationInputFromJson(json);
}
