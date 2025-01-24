// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'i_package_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IPackageItemImpl _$$IPackageItemImplFromJson(Map<String, dynamic> json) =>
    _$IPackageItemImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      ageRestriction:
          IPackageItemAgeRestriction.fromJson(json['ageRestriction'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      rounds: (json['rounds'] as num).toInt(),
      author: Author.fromJson(json['author'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$IPackageItemImplToJson(_$IPackageItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'ageRestriction': instance.ageRestriction,
      'createdAt': instance.createdAt.toIso8601String(),
      'rounds': instance.rounds,
      'author': instance.author,
    };
