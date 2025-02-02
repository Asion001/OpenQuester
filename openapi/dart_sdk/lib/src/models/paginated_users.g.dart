// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatedUsersImpl _$$PaginatedUsersImplFromJson(Map<String, dynamic> json) =>
    _$PaginatedUsersImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => ResponseUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageInfo: PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaginatedUsersImplToJson(
        _$PaginatedUsersImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pageInfo': instance.pageInfo,
    };
