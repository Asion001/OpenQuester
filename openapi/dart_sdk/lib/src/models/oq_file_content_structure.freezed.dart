// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oq_file_content_structure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OQFileContentStructure _$OQFileContentStructureFromJson(
    Map<String, dynamic> json) {
  return _OQFileContentStructure.fromJson(json);
}

/// @nodoc
mixin _$OQFileContentStructure {
  String get crc32 => throw _privateConstructorUsedError;
  OQFileContentStructureType get type => throw _privateConstructorUsedError;

  /// Serializes this OQFileContentStructure to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OQFileContentStructure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OQFileContentStructureCopyWith<OQFileContentStructure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OQFileContentStructureCopyWith<$Res> {
  factory $OQFileContentStructureCopyWith(OQFileContentStructure value,
          $Res Function(OQFileContentStructure) then) =
      _$OQFileContentStructureCopyWithImpl<$Res, OQFileContentStructure>;
  @useResult
  $Res call({String crc32, OQFileContentStructureType type});
}

/// @nodoc
class _$OQFileContentStructureCopyWithImpl<$Res,
        $Val extends OQFileContentStructure>
    implements $OQFileContentStructureCopyWith<$Res> {
  _$OQFileContentStructureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OQFileContentStructure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crc32 = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      crc32: null == crc32
          ? _value.crc32
          : crc32 // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OQFileContentStructureType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OQFileContentStructureImplCopyWith<$Res>
    implements $OQFileContentStructureCopyWith<$Res> {
  factory _$$OQFileContentStructureImplCopyWith(
          _$OQFileContentStructureImpl value,
          $Res Function(_$OQFileContentStructureImpl) then) =
      __$$OQFileContentStructureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String crc32, OQFileContentStructureType type});
}

/// @nodoc
class __$$OQFileContentStructureImplCopyWithImpl<$Res>
    extends _$OQFileContentStructureCopyWithImpl<$Res,
        _$OQFileContentStructureImpl>
    implements _$$OQFileContentStructureImplCopyWith<$Res> {
  __$$OQFileContentStructureImplCopyWithImpl(
      _$OQFileContentStructureImpl _value,
      $Res Function(_$OQFileContentStructureImpl) _then)
      : super(_value, _then);

  /// Create a copy of OQFileContentStructure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crc32 = null,
    Object? type = null,
  }) {
    return _then(_$OQFileContentStructureImpl(
      crc32: null == crc32
          ? _value.crc32
          : crc32 // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OQFileContentStructureType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OQFileContentStructureImpl implements _OQFileContentStructure {
  const _$OQFileContentStructureImpl({required this.crc32, required this.type});

  factory _$OQFileContentStructureImpl.fromJson(Map<String, dynamic> json) =>
      _$$OQFileContentStructureImplFromJson(json);

  @override
  final String crc32;
  @override
  final OQFileContentStructureType type;

  @override
  String toString() {
    return 'OQFileContentStructure(crc32: $crc32, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OQFileContentStructureImpl &&
            (identical(other.crc32, crc32) || other.crc32 == crc32) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, crc32, type);

  /// Create a copy of OQFileContentStructure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OQFileContentStructureImplCopyWith<_$OQFileContentStructureImpl>
      get copyWith => __$$OQFileContentStructureImplCopyWithImpl<
          _$OQFileContentStructureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OQFileContentStructureImplToJson(
      this,
    );
  }
}

abstract class _OQFileContentStructure implements OQFileContentStructure {
  const factory _OQFileContentStructure(
          {required final String crc32,
          required final OQFileContentStructureType type}) =
      _$OQFileContentStructureImpl;

  factory _OQFileContentStructure.fromJson(Map<String, dynamic> json) =
      _$OQFileContentStructureImpl.fromJson;

  @override
  String get crc32;
  @override
  OQFileContentStructureType get type;

  /// Create a copy of OQFileContentStructure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OQFileContentStructureImplCopyWith<_$OQFileContentStructureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
