// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationImpl _$$PaginationImplFromJson(Map<String, dynamic> json) =>
    _$PaginationImpl(
      sortBy: SortBy.fromJson(json['sortBy'] as String),
      order: Order.fromJson(json['order'] as String),
      limit: (json['limit'] as num).toInt(),
      offset: (json['offset'] as num).toInt(),
    );

Map<String, dynamic> _$$PaginationImplToJson(_$PaginationImpl instance) =>
    <String, dynamic>{
      'sortBy': instance.sortBy,
      'order': instance.order,
      'limit': instance.limit,
      'offset': instance.offset,
    };
