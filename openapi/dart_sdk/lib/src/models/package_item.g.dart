// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageItemImpl _$$PackageItemImplFromJson(Map<String, dynamic> json) =>
    _$PackageItemImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      ageRestriction:
          PackageItemAgeRestriction.fromJson(json['ageRestriction'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      rounds: (json['rounds'] as num).toInt(),
      author: ShortUserInfo.fromJson(json['author'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PackageItemImplToJson(_$PackageItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'ageRestriction': instance.ageRestriction,
      'createdAt': instance.createdAt.toIso8601String(),
      'rounds': instance.rounds,
      'author': instance.author,
      'tags': instance.tags,
    };
