// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'games_pagination_params_order.dart';
import 'games_pagination_params_sort_by.dart';

part 'games_pagination_params.freezed.dart';
part 'games_pagination_params.g.dart';

@Freezed()
class GamesPaginationParams with _$GamesPaginationParams {
  const factory GamesPaginationParams({
    required int limit,
    required int offset,
    @Default(GamesPaginationParamsOrder.asc)
    GamesPaginationParamsOrder order,
    @Default(GamesPaginationParamsSortBy.createdAt)
    GamesPaginationParamsSortBy sortBy,
  }) = _GamesPaginationParams;
  
  factory GamesPaginationParams.fromJson(Map<String, Object?> json) => _$GamesPaginationParamsFromJson(json);
}
