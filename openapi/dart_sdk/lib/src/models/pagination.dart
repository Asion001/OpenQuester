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
    required int limit,
    required int offset,
    @Default(SortBy.createdAt)
    SortBy sortBy,
    @Default(Order.asc)
    Order order,
  }) = _Pagination;
  
  factory Pagination.fromJson(Map<String, Object?> json) => _$PaginationFromJson(json);
}
