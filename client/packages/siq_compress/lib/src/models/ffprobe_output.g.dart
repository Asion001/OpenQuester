// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ffprobe_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FfprobeOutputImpl _$$FfprobeOutputImplFromJson(Map<String, dynamic> json) =>
    _$FfprobeOutputImpl(
      streams: (json['streams'] as List<dynamic>)
          .map((e) => StreamData.fromJson(e as Map<String, dynamic>))
          .toList(),
      format: FormatData.fromJson(json['format'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FfprobeOutputImplToJson(_$FfprobeOutputImpl instance) =>
    <String, dynamic>{
      'streams': instance.streams.map((e) => e.toJson()).toList(),
      'format': instance.format.toJson(),
    };

_$StreamDataImpl _$$StreamDataImplFromJson(Map<String, dynamic> json) =>
    _$StreamDataImpl(
      index: (json['index'] as num).toInt(),
      codecName: json['codec_name'] as String?,
      codecLongName: json['codec_long_name'] as String?,
      codecType: $enumDecodeNullable(_$CodecTypeEnumMap, json['codec_type'],
          unknownValue: JsonKey.nullForUndefinedEnumValue),
      profile: json['profile'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      codedWidth: (json['coded_width'] as num?)?.toInt(),
      codedHeight: (json['coded_height'] as num?)?.toInt(),
      displayAspectRatio: json['display_aspect_ratio'] as String?,
      pixFmt: json['pix_fmt'] as String?,
      level: (json['level'] as num?)?.toInt(),
      sampleFmt: _sampleFormatFromString(json['sample_fmt'] as String?),
      sampleRate: json['sample_rate'] as String?,
      channels: (json['channels'] as num?)?.toInt(),
      channelLayout: json['channel_layout'] as String?,
    );

Map<String, dynamic> _$$StreamDataImplToJson(_$StreamDataImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      if (instance.codecName case final value?) 'codec_name': value,
      if (instance.codecLongName case final value?) 'codec_long_name': value,
      if (_$CodecTypeEnumMap[instance.codecType] case final value?)
        'codec_type': value,
      if (instance.profile case final value?) 'profile': value,
      if (instance.width case final value?) 'width': value,
      if (instance.height case final value?) 'height': value,
      if (instance.codedWidth case final value?) 'coded_width': value,
      if (instance.codedHeight case final value?) 'coded_height': value,
      if (instance.displayAspectRatio case final value?)
        'display_aspect_ratio': value,
      if (instance.pixFmt case final value?) 'pix_fmt': value,
      if (instance.level case final value?) 'level': value,
      if (_sampleFormatToString(instance.sampleFmt) case final value?)
        'sample_fmt': value,
      if (instance.sampleRate case final value?) 'sample_rate': value,
      if (instance.channels case final value?) 'channels': value,
      if (instance.channelLayout case final value?) 'channel_layout': value,
    };

const _$CodecTypeEnumMap = {
  CodecType.video: 'video',
  CodecType.audio: 'audio',
  CodecType.image: 'image',
};

_$FormatDataImpl _$$FormatDataImplFromJson(Map<String, dynamic> json) =>
    _$FormatDataImpl(
      filename: json['filename'] as String,
      formatName: json['format_name'] as String,
      formatLongName: json['format_long_name'] as String,
      size: json['size'] as String,
      bitRate: json['bit_rate'] as String?,
      duration: json['duration'] as String?,
      startTime: json['start_time'] as String?,
    );

Map<String, dynamic> _$$FormatDataImplToJson(_$FormatDataImpl instance) =>
    <String, dynamic>{
      'filename': instance.filename,
      'format_name': instance.formatName,
      'format_long_name': instance.formatLongName,
      'size': instance.size,
      if (instance.bitRate case final value?) 'bit_rate': value,
      if (instance.duration case final value?) 'duration': value,
      if (instance.startTime case final value?) 'start_time': value,
    };
