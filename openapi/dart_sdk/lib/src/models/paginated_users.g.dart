// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedUsers _$PaginatedUsersFromJson(Map<String, dynamic> json) =>
    _PaginatedUsers(
      data: (json['data'] as List<dynamic>)
          .map((e) => ResponseUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageInfo: PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaginatedUsersToJson(_PaginatedUsers instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pageInfo': instance.pageInfo,
    };
