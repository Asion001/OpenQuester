// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oq_round_structure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OQRoundStructureImpl _$$OQRoundStructureImplFromJson(
        Map<String, dynamic> json) =>
    _$OQRoundStructureImpl(
      name: json['name'] as String,
      themes: (json['themes'] as List<dynamic>)
          .map((e) => OQThemeStructure.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OQRoundStructureImplToJson(
        _$OQRoundStructureImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'themes': instance.themes,
    };
