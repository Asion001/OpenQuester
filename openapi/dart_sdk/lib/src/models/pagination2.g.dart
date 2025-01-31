// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Pagination2Impl _$$Pagination2ImplFromJson(Map<String, dynamic> json) =>
    _$Pagination2Impl(
      limit: (json['limit'] as num).toInt(),
      offset: (json['offset'] as num).toInt(),
      order: json['order'] == null
          ? Order.asc
          : Order.fromJson(json['order'] as String),
      sortBy: json['sortBy'] == null
          ? SortBy2.createdAt
          : SortBy2.fromJson(json['sortBy'] as String),
    );

Map<String, dynamic> _$$Pagination2ImplToJson(_$Pagination2Impl instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
      'order': instance.order,
      'sortBy': instance.sortBy,
    };
