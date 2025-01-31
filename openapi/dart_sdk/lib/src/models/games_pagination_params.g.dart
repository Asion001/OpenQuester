// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'games_pagination_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GamesPaginationParamsImpl _$$GamesPaginationParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$GamesPaginationParamsImpl(
      limit: (json['limit'] as num).toInt(),
      offset: (json['offset'] as num).toInt(),
      order: json['order'] == null
          ? GamesPaginationParamsOrder.asc
          : GamesPaginationParamsOrder.fromJson(json['order'] as String),
      sortBy: json['sortBy'] == null
          ? GamesPaginationParamsSortBy.createdAt
          : GamesPaginationParamsSortBy.fromJson(json['sortBy'] as String),
    );

Map<String, dynamic> _$$GamesPaginationParamsImplToJson(
        _$GamesPaginationParamsImpl instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
      'order': instance.order,
      'sortBy': instance.sortBy,
    };
