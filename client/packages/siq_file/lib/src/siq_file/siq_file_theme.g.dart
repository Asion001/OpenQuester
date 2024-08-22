// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'siq_file_theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SiqFileThemeImpl _$$SiqFileThemeImplFromJson(Map<String, dynamic> json) =>
    _$SiqFileThemeImpl(
      name: json['name'] as String,
      comment: json['comment'] as String?,
      questions: (json['questions'] as List<dynamic>?)
              ?.map((e) => SiqFileQuestion.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SiqFileThemeImplToJson(_$SiqFileThemeImpl instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('comment', instance.comment);
  val['questions'] = instance.questions;
  return val;
}
