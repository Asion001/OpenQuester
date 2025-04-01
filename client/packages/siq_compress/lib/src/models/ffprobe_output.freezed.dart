// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ffprobe_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FfprobeOutput _$FfprobeOutputFromJson(Map<String, dynamic> json) {
  return _FfprobeOutput.fromJson(json);
}

/// @nodoc
mixin _$FfprobeOutput {
  List<StreamData> get streams => throw _privateConstructorUsedError;
  FormatData get format => throw _privateConstructorUsedError;

  /// Serializes this FfprobeOutput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FfprobeOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FfprobeOutputCopyWith<FfprobeOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FfprobeOutputCopyWith<$Res> {
  factory $FfprobeOutputCopyWith(
          FfprobeOutput value, $Res Function(FfprobeOutput) then) =
      _$FfprobeOutputCopyWithImpl<$Res, FfprobeOutput>;
  @useResult
  $Res call({List<StreamData> streams, FormatData format});

  $FormatDataCopyWith<$Res> get format;
}

/// @nodoc
class _$FfprobeOutputCopyWithImpl<$Res, $Val extends FfprobeOutput>
    implements $FfprobeOutputCopyWith<$Res> {
  _$FfprobeOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FfprobeOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streams = null,
    Object? format = null,
  }) {
    return _then(_value.copyWith(
      streams: null == streams
          ? _value.streams
          : streams // ignore: cast_nullable_to_non_nullable
              as List<StreamData>,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as FormatData,
    ) as $Val);
  }

  /// Create a copy of FfprobeOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FormatDataCopyWith<$Res> get format {
    return $FormatDataCopyWith<$Res>(_value.format, (value) {
      return _then(_value.copyWith(format: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FfprobeOutputImplCopyWith<$Res>
    implements $FfprobeOutputCopyWith<$Res> {
  factory _$$FfprobeOutputImplCopyWith(
          _$FfprobeOutputImpl value, $Res Function(_$FfprobeOutputImpl) then) =
      __$$FfprobeOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StreamData> streams, FormatData format});

  @override
  $FormatDataCopyWith<$Res> get format;
}

/// @nodoc
class __$$FfprobeOutputImplCopyWithImpl<$Res>
    extends _$FfprobeOutputCopyWithImpl<$Res, _$FfprobeOutputImpl>
    implements _$$FfprobeOutputImplCopyWith<$Res> {
  __$$FfprobeOutputImplCopyWithImpl(
      _$FfprobeOutputImpl _value, $Res Function(_$FfprobeOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of FfprobeOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? streams = null,
    Object? format = null,
  }) {
    return _then(_$FfprobeOutputImpl(
      streams: null == streams
          ? _value._streams
          : streams // ignore: cast_nullable_to_non_nullable
              as List<StreamData>,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as FormatData,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$FfprobeOutputImpl implements _FfprobeOutput {
  const _$FfprobeOutputImpl(
      {required final List<StreamData> streams, required this.format})
      : _streams = streams;

  factory _$FfprobeOutputImpl.fromJson(Map<String, dynamic> json) =>
      _$$FfprobeOutputImplFromJson(json);

  final List<StreamData> _streams;
  @override
  List<StreamData> get streams {
    if (_streams is EqualUnmodifiableListView) return _streams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_streams);
  }

  @override
  final FormatData format;

  @override
  String toString() {
    return 'FfprobeOutput(streams: $streams, format: $format)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FfprobeOutputImpl &&
            const DeepCollectionEquality().equals(other._streams, _streams) &&
            (identical(other.format, format) || other.format == format));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_streams), format);

  /// Create a copy of FfprobeOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FfprobeOutputImplCopyWith<_$FfprobeOutputImpl> get copyWith =>
      __$$FfprobeOutputImplCopyWithImpl<_$FfprobeOutputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FfprobeOutputImplToJson(
      this,
    );
  }
}

abstract class _FfprobeOutput implements FfprobeOutput {
  const factory _FfprobeOutput(
      {required final List<StreamData> streams,
      required final FormatData format}) = _$FfprobeOutputImpl;

  factory _FfprobeOutput.fromJson(Map<String, dynamic> json) =
      _$FfprobeOutputImpl.fromJson;

  @override
  List<StreamData> get streams;
  @override
  FormatData get format;

  /// Create a copy of FfprobeOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FfprobeOutputImplCopyWith<_$FfprobeOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StreamData _$StreamDataFromJson(Map<String, dynamic> json) {
  return _StreamData.fromJson(json);
}

/// @nodoc
mixin _$StreamData {
  int get index => throw _privateConstructorUsedError;
  String? get codecName => throw _privateConstructorUsedError;
  String? get codecLongName => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  CodecType? get codecType => throw _privateConstructorUsedError;
  String? get profile => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get codedWidth => throw _privateConstructorUsedError;
  int? get codedHeight => throw _privateConstructorUsedError;
  String? get displayAspectRatio => throw _privateConstructorUsedError;
  String? get pixFmt => throw _privateConstructorUsedError;
  int? get level => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _sampleFormatFromString, toJson: _sampleFormatToString)
  SampleFormat? get sampleFmt => throw _privateConstructorUsedError;
  String? get sampleRate => throw _privateConstructorUsedError;
  int? get channels => throw _privateConstructorUsedError;
  String? get channelLayout => throw _privateConstructorUsedError;

  /// Serializes this StreamData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StreamData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StreamDataCopyWith<StreamData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamDataCopyWith<$Res> {
  factory $StreamDataCopyWith(
          StreamData value, $Res Function(StreamData) then) =
      _$StreamDataCopyWithImpl<$Res, StreamData>;
  @useResult
  $Res call(
      {int index,
      String? codecName,
      String? codecLongName,
      @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      CodecType? codecType,
      String? profile,
      int? width,
      int? height,
      int? codedWidth,
      int? codedHeight,
      String? displayAspectRatio,
      String? pixFmt,
      int? level,
      @JsonKey(fromJson: _sampleFormatFromString, toJson: _sampleFormatToString)
      SampleFormat? sampleFmt,
      String? sampleRate,
      int? channels,
      String? channelLayout});
}

/// @nodoc
class _$StreamDataCopyWithImpl<$Res, $Val extends StreamData>
    implements $StreamDataCopyWith<$Res> {
  _$StreamDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StreamData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? codecName = freezed,
    Object? codecLongName = freezed,
    Object? codecType = freezed,
    Object? profile = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? codedWidth = freezed,
    Object? codedHeight = freezed,
    Object? displayAspectRatio = freezed,
    Object? pixFmt = freezed,
    Object? level = freezed,
    Object? sampleFmt = freezed,
    Object? sampleRate = freezed,
    Object? channels = freezed,
    Object? channelLayout = freezed,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      codecName: freezed == codecName
          ? _value.codecName
          : codecName // ignore: cast_nullable_to_non_nullable
              as String?,
      codecLongName: freezed == codecLongName
          ? _value.codecLongName
          : codecLongName // ignore: cast_nullable_to_non_nullable
              as String?,
      codecType: freezed == codecType
          ? _value.codecType
          : codecType // ignore: cast_nullable_to_non_nullable
              as CodecType?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      codedWidth: freezed == codedWidth
          ? _value.codedWidth
          : codedWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      codedHeight: freezed == codedHeight
          ? _value.codedHeight
          : codedHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      displayAspectRatio: freezed == displayAspectRatio
          ? _value.displayAspectRatio
          : displayAspectRatio // ignore: cast_nullable_to_non_nullable
              as String?,
      pixFmt: freezed == pixFmt
          ? _value.pixFmt
          : pixFmt // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      sampleFmt: freezed == sampleFmt
          ? _value.sampleFmt
          : sampleFmt // ignore: cast_nullable_to_non_nullable
              as SampleFormat?,
      sampleRate: freezed == sampleRate
          ? _value.sampleRate
          : sampleRate // ignore: cast_nullable_to_non_nullable
              as String?,
      channels: freezed == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as int?,
      channelLayout: freezed == channelLayout
          ? _value.channelLayout
          : channelLayout // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StreamDataImplCopyWith<$Res>
    implements $StreamDataCopyWith<$Res> {
  factory _$$StreamDataImplCopyWith(
          _$StreamDataImpl value, $Res Function(_$StreamDataImpl) then) =
      __$$StreamDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index,
      String? codecName,
      String? codecLongName,
      @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      CodecType? codecType,
      String? profile,
      int? width,
      int? height,
      int? codedWidth,
      int? codedHeight,
      String? displayAspectRatio,
      String? pixFmt,
      int? level,
      @JsonKey(fromJson: _sampleFormatFromString, toJson: _sampleFormatToString)
      SampleFormat? sampleFmt,
      String? sampleRate,
      int? channels,
      String? channelLayout});
}

/// @nodoc
class __$$StreamDataImplCopyWithImpl<$Res>
    extends _$StreamDataCopyWithImpl<$Res, _$StreamDataImpl>
    implements _$$StreamDataImplCopyWith<$Res> {
  __$$StreamDataImplCopyWithImpl(
      _$StreamDataImpl _value, $Res Function(_$StreamDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of StreamData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? codecName = freezed,
    Object? codecLongName = freezed,
    Object? codecType = freezed,
    Object? profile = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? codedWidth = freezed,
    Object? codedHeight = freezed,
    Object? displayAspectRatio = freezed,
    Object? pixFmt = freezed,
    Object? level = freezed,
    Object? sampleFmt = freezed,
    Object? sampleRate = freezed,
    Object? channels = freezed,
    Object? channelLayout = freezed,
  }) {
    return _then(_$StreamDataImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      codecName: freezed == codecName
          ? _value.codecName
          : codecName // ignore: cast_nullable_to_non_nullable
              as String?,
      codecLongName: freezed == codecLongName
          ? _value.codecLongName
          : codecLongName // ignore: cast_nullable_to_non_nullable
              as String?,
      codecType: freezed == codecType
          ? _value.codecType
          : codecType // ignore: cast_nullable_to_non_nullable
              as CodecType?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      codedWidth: freezed == codedWidth
          ? _value.codedWidth
          : codedWidth // ignore: cast_nullable_to_non_nullable
              as int?,
      codedHeight: freezed == codedHeight
          ? _value.codedHeight
          : codedHeight // ignore: cast_nullable_to_non_nullable
              as int?,
      displayAspectRatio: freezed == displayAspectRatio
          ? _value.displayAspectRatio
          : displayAspectRatio // ignore: cast_nullable_to_non_nullable
              as String?,
      pixFmt: freezed == pixFmt
          ? _value.pixFmt
          : pixFmt // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      sampleFmt: freezed == sampleFmt
          ? _value.sampleFmt
          : sampleFmt // ignore: cast_nullable_to_non_nullable
              as SampleFormat?,
      sampleRate: freezed == sampleRate
          ? _value.sampleRate
          : sampleRate // ignore: cast_nullable_to_non_nullable
              as String?,
      channels: freezed == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as int?,
      channelLayout: freezed == channelLayout
          ? _value.channelLayout
          : channelLayout // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$StreamDataImpl implements _StreamData {
  const _$StreamDataImpl(
      {required this.index,
      this.codecName,
      this.codecLongName,
      @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      this.codecType,
      this.profile,
      this.width,
      this.height,
      this.codedWidth,
      this.codedHeight,
      this.displayAspectRatio,
      this.pixFmt,
      this.level,
      @JsonKey(fromJson: _sampleFormatFromString, toJson: _sampleFormatToString)
      this.sampleFmt,
      this.sampleRate,
      this.channels,
      this.channelLayout});

  factory _$StreamDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$StreamDataImplFromJson(json);

  @override
  final int index;
  @override
  final String? codecName;
  @override
  final String? codecLongName;
  @override
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final CodecType? codecType;
  @override
  final String? profile;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final int? codedWidth;
  @override
  final int? codedHeight;
  @override
  final String? displayAspectRatio;
  @override
  final String? pixFmt;
  @override
  final int? level;
  @override
  @JsonKey(fromJson: _sampleFormatFromString, toJson: _sampleFormatToString)
  final SampleFormat? sampleFmt;
  @override
  final String? sampleRate;
  @override
  final int? channels;
  @override
  final String? channelLayout;

  @override
  String toString() {
    return 'StreamData(index: $index, codecName: $codecName, codecLongName: $codecLongName, codecType: $codecType, profile: $profile, width: $width, height: $height, codedWidth: $codedWidth, codedHeight: $codedHeight, displayAspectRatio: $displayAspectRatio, pixFmt: $pixFmt, level: $level, sampleFmt: $sampleFmt, sampleRate: $sampleRate, channels: $channels, channelLayout: $channelLayout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamDataImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.codecName, codecName) ||
                other.codecName == codecName) &&
            (identical(other.codecLongName, codecLongName) ||
                other.codecLongName == codecLongName) &&
            (identical(other.codecType, codecType) ||
                other.codecType == codecType) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.codedWidth, codedWidth) ||
                other.codedWidth == codedWidth) &&
            (identical(other.codedHeight, codedHeight) ||
                other.codedHeight == codedHeight) &&
            (identical(other.displayAspectRatio, displayAspectRatio) ||
                other.displayAspectRatio == displayAspectRatio) &&
            (identical(other.pixFmt, pixFmt) || other.pixFmt == pixFmt) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.sampleFmt, sampleFmt) ||
                other.sampleFmt == sampleFmt) &&
            (identical(other.sampleRate, sampleRate) ||
                other.sampleRate == sampleRate) &&
            (identical(other.channels, channels) ||
                other.channels == channels) &&
            (identical(other.channelLayout, channelLayout) ||
                other.channelLayout == channelLayout));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      index,
      codecName,
      codecLongName,
      codecType,
      profile,
      width,
      height,
      codedWidth,
      codedHeight,
      displayAspectRatio,
      pixFmt,
      level,
      sampleFmt,
      sampleRate,
      channels,
      channelLayout);

  /// Create a copy of StreamData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamDataImplCopyWith<_$StreamDataImpl> get copyWith =>
      __$$StreamDataImplCopyWithImpl<_$StreamDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StreamDataImplToJson(
      this,
    );
  }
}

abstract class _StreamData implements StreamData {
  const factory _StreamData(
      {required final int index,
      final String? codecName,
      final String? codecLongName,
      @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      final CodecType? codecType,
      final String? profile,
      final int? width,
      final int? height,
      final int? codedWidth,
      final int? codedHeight,
      final String? displayAspectRatio,
      final String? pixFmt,
      final int? level,
      @JsonKey(fromJson: _sampleFormatFromString, toJson: _sampleFormatToString)
      final SampleFormat? sampleFmt,
      final String? sampleRate,
      final int? channels,
      final String? channelLayout}) = _$StreamDataImpl;

  factory _StreamData.fromJson(Map<String, dynamic> json) =
      _$StreamDataImpl.fromJson;

  @override
  int get index;
  @override
  String? get codecName;
  @override
  String? get codecLongName;
  @override
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  CodecType? get codecType;
  @override
  String? get profile;
  @override
  int? get width;
  @override
  int? get height;
  @override
  int? get codedWidth;
  @override
  int? get codedHeight;
  @override
  String? get displayAspectRatio;
  @override
  String? get pixFmt;
  @override
  int? get level;
  @override
  @JsonKey(fromJson: _sampleFormatFromString, toJson: _sampleFormatToString)
  SampleFormat? get sampleFmt;
  @override
  String? get sampleRate;
  @override
  int? get channels;
  @override
  String? get channelLayout;

  /// Create a copy of StreamData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamDataImplCopyWith<_$StreamDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FormatData _$FormatDataFromJson(Map<String, dynamic> json) {
  return _FormatData.fromJson(json);
}

/// @nodoc
mixin _$FormatData {
  String get filename => throw _privateConstructorUsedError;
  String get formatName => throw _privateConstructorUsedError;
  String get formatLongName => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  String get bitRate => throw _privateConstructorUsedError;

  /// Serializes this FormatData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FormatData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormatDataCopyWith<FormatData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormatDataCopyWith<$Res> {
  factory $FormatDataCopyWith(
          FormatData value, $Res Function(FormatData) then) =
      _$FormatDataCopyWithImpl<$Res, FormatData>;
  @useResult
  $Res call(
      {String filename,
      String formatName,
      String formatLongName,
      String startTime,
      String duration,
      String size,
      String bitRate});
}

/// @nodoc
class _$FormatDataCopyWithImpl<$Res, $Val extends FormatData>
    implements $FormatDataCopyWith<$Res> {
  _$FormatDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormatData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
    Object? formatName = null,
    Object? formatLongName = null,
    Object? startTime = null,
    Object? duration = null,
    Object? size = null,
    Object? bitRate = null,
  }) {
    return _then(_value.copyWith(
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      formatName: null == formatName
          ? _value.formatName
          : formatName // ignore: cast_nullable_to_non_nullable
              as String,
      formatLongName: null == formatLongName
          ? _value.formatLongName
          : formatLongName // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      bitRate: null == bitRate
          ? _value.bitRate
          : bitRate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormatDataImplCopyWith<$Res>
    implements $FormatDataCopyWith<$Res> {
  factory _$$FormatDataImplCopyWith(
          _$FormatDataImpl value, $Res Function(_$FormatDataImpl) then) =
      __$$FormatDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String filename,
      String formatName,
      String formatLongName,
      String startTime,
      String duration,
      String size,
      String bitRate});
}

/// @nodoc
class __$$FormatDataImplCopyWithImpl<$Res>
    extends _$FormatDataCopyWithImpl<$Res, _$FormatDataImpl>
    implements _$$FormatDataImplCopyWith<$Res> {
  __$$FormatDataImplCopyWithImpl(
      _$FormatDataImpl _value, $Res Function(_$FormatDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormatData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
    Object? formatName = null,
    Object? formatLongName = null,
    Object? startTime = null,
    Object? duration = null,
    Object? size = null,
    Object? bitRate = null,
  }) {
    return _then(_$FormatDataImpl(
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      formatName: null == formatName
          ? _value.formatName
          : formatName // ignore: cast_nullable_to_non_nullable
              as String,
      formatLongName: null == formatLongName
          ? _value.formatLongName
          : formatLongName // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      bitRate: null == bitRate
          ? _value.bitRate
          : bitRate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$FormatDataImpl implements _FormatData {
  const _$FormatDataImpl(
      {required this.filename,
      required this.formatName,
      required this.formatLongName,
      required this.startTime,
      required this.duration,
      required this.size,
      required this.bitRate});

  factory _$FormatDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormatDataImplFromJson(json);

  @override
  final String filename;
  @override
  final String formatName;
  @override
  final String formatLongName;
  @override
  final String startTime;
  @override
  final String duration;
  @override
  final String size;
  @override
  final String bitRate;

  @override
  String toString() {
    return 'FormatData(filename: $filename, formatName: $formatName, formatLongName: $formatLongName, startTime: $startTime, duration: $duration, size: $size, bitRate: $bitRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormatDataImpl &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.formatName, formatName) ||
                other.formatName == formatName) &&
            (identical(other.formatLongName, formatLongName) ||
                other.formatLongName == formatLongName) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.bitRate, bitRate) || other.bitRate == bitRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, filename, formatName,
      formatLongName, startTime, duration, size, bitRate);

  /// Create a copy of FormatData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormatDataImplCopyWith<_$FormatDataImpl> get copyWith =>
      __$$FormatDataImplCopyWithImpl<_$FormatDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormatDataImplToJson(
      this,
    );
  }
}

abstract class _FormatData implements FormatData {
  const factory _FormatData(
      {required final String filename,
      required final String formatName,
      required final String formatLongName,
      required final String startTime,
      required final String duration,
      required final String size,
      required final String bitRate}) = _$FormatDataImpl;

  factory _FormatData.fromJson(Map<String, dynamic> json) =
      _$FormatDataImpl.fromJson;

  @override
  String get filename;
  @override
  String get formatName;
  @override
  String get formatLongName;
  @override
  String get startTime;
  @override
  String get duration;
  @override
  String get size;
  @override
  String get bitRate;

  /// Create a copy of FormatData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormatDataImplCopyWith<_$FormatDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
