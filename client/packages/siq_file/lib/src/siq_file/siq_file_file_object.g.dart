// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'siq_file_file_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SiqFileFileObjectImpl _$$SiqFileFileObjectImplFromJson(
  Map<String, dynamic> json,
) => _$SiqFileFileObjectImpl(
  file: FileObject.fromJson(json['file'] as Map<String, dynamic>),
  displayTime:
      json['displayTime'] == null
          ? null
          : Duration(microseconds: (json['displayTime'] as num).toInt()),
);

Map<String, dynamic> _$$SiqFileFileObjectImplToJson(
  _$SiqFileFileObjectImpl instance,
) => <String, dynamic>{
  'file': instance.file,
  if (instance.displayTime?.inMicroseconds case final value?)
    'displayTime': value,
};
