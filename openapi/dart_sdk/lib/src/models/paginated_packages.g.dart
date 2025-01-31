// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_packages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatedPackagesImpl _$$PaginatedPackagesImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginatedPackagesImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => IPackageItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageInfo: PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaginatedPackagesImplToJson(
        _$PaginatedPackagesImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pageInfo': instance.pageInfo,
    };
