// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_info.freezed.dart';
part 'page_info.g.dart';

@Freezed()
class PageInfo with _$PageInfo {
  const factory PageInfo({
    required int total,
  }) = _PageInfo;
  
  factory PageInfo.fromJson(Map<String, Object?> json) => _$PageInfoFromJson(json);
}
