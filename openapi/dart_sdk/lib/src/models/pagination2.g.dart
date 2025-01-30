// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Pagination2Impl _$$Pagination2ImplFromJson(Map<String, dynamic> json) =>
    _$Pagination2Impl(
      sortBy: SortBy2.fromJson(json['sortBy'] as String),
      order: Order.fromJson(json['order'] as String),
      limit: (json['limit'] as num).toInt(),
      offset: (json['offset'] as num).toInt(),
    );

Map<String, dynamic> _$$Pagination2ImplToJson(_$Pagination2Impl instance) =>
    <String, dynamic>{
      'sortBy': instance.sortBy,
      'order': instance.order,
      'limit': instance.limit,
      'offset': instance.offset,
    };
