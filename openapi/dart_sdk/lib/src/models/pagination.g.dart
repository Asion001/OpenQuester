// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationImpl _$$PaginationImplFromJson(Map<String, dynamic> json) =>
    _$PaginationImpl(
      limit: (json['limit'] as num).toInt(),
      offset: (json['offset'] as num).toInt(),
      sortBy: json['sortBy'] == null
          ? SortBy.createdAt
          : SortBy.fromJson(json['sortBy'] as String),
      order: json['order'] == null
          ? Order.asc
          : Order.fromJson(json['order'] as String),
    );

Map<String, dynamic> _$$PaginationImplToJson(_$PaginationImpl instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
      'sortBy': instance.sortBy,
      'order': instance.order,
    };
