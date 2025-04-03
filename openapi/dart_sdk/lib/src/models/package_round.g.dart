// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_round.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageRoundImpl _$$PackageRoundImplFromJson(Map<String, dynamic> json) =>
    _$PackageRoundImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
      themes: (json['themes'] as List<dynamic>)
          .map((e) => PackageTheme.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PackageRoundImplToJson(_$PackageRoundImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'themes': instance.themes,
    };
