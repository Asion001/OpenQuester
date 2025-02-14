// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'siq_file_round.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SiqFileRoundImpl _$$SiqFileRoundImplFromJson(Map<String, dynamic> json) =>
    _$SiqFileRoundImpl(
      name: json['name'] as String,
      themes:
          (json['themes'] as List<dynamic>?)
              ?.map((e) => SiqFileTheme.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SiqFileRoundImplToJson(_$SiqFileRoundImpl instance) =>
    <String, dynamic>{'name': instance.name, 'themes': instance.themes};
