// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_packages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedPackages _$PaginatedPackagesFromJson(Map<String, dynamic> json) =>
    _PaginatedPackages(
      data: (json['data'] as List<dynamic>)
          .map((e) => PackageListItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageInfo: PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaginatedPackagesToJson(_PaginatedPackages instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pageInfo': instance.pageInfo,
    };
