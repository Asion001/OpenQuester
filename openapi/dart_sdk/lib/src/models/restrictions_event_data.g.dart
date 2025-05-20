// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restrictions_event_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RestrictionsEventData _$RestrictionsEventDataFromJson(
  Map<String, dynamic> json,
) => _RestrictionsEventData(
  muted: json['muted'] as bool,
  restricted: json['restricted'] as bool,
);

Map<String, dynamic> _$RestrictionsEventDataToJson(
  _RestrictionsEventData instance,
) => <String, dynamic>{
  'muted': instance.muted,
  'restricted': instance.restricted,
};
