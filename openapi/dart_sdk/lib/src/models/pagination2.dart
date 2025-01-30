// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'sort_by2.dart';
import 'order.dart';

part 'pagination2.freezed.dart';
part 'pagination2.g.dart';

@Freezed()
class Pagination2 with _$Pagination2 {
  const factory Pagination2({
    required SortBy2 sortBy,
    required Order order,
    required int limit,
    required int offset,
  }) = _Pagination2;
  
  factory Pagination2.fromJson(Map<String, Object?> json) => _$Pagination2FromJson(json);
}
