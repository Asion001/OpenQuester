// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseUserImpl _$$ResponseUserImplFromJson(Map<String, dynamic> json) =>
    _$ResponseUserImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      isDeleted: json['is_deleted'] as bool,
      permissions: (json['permissions'] as List<dynamic>)
          .map((e) => Permissions.fromJson(e as Map<String, dynamic>))
          .toList(),
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$ResponseUserImplToJson(_$ResponseUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'is_deleted': instance.isDeleted,
      'permissions': instance.permissions,
      'birthday': instance.birthday?.toIso8601String(),
      'avatar': instance.avatar,
    };
