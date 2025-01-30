// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'sort_by.dart';
import 'order.dart';

part 'pagination.freezed.dart';
part 'pagination.g.dart';

@Freezed()
class Pagination with _$Pagination {
  const factory Pagination({
    required SortBy sortBy,
    required Order order,
    required int limit,
    required int offset,
  }) = _Pagination;
  
  factory Pagination.fromJson(Map<String, Object?> json) => _$PaginationFromJson(json);
}
