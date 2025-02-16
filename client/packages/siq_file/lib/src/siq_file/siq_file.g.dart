// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'siq_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SiqFileImpl _$$SiqFileImplFromJson(Map<String, dynamic> json) =>
    _$SiqFileImpl(
      metadata: SiqFileMetadata.fromJson(
        json['metadata'] as Map<String, dynamic>,
      ),
      rounds:
          (json['rounds'] as List<dynamic>?)
              ?.map((e) => SiqFileRound.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SiqFileImplToJson(_$SiqFileImpl instance) =>
    <String, dynamic>{'metadata': instance.metadata, 'rounds': instance.rounds};
