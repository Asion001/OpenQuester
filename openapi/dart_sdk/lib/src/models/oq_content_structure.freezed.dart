// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oq_content_structure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OQContentStructure _$OQContentStructureFromJson(Map<String, dynamic> json) {
  return _OQContentStructure.fromJson(json);
}

/// @nodoc
mixin _$OQContentStructure {
  OQMetadataStructure get metadata => throw _privateConstructorUsedError;
  List<OQRoundStructure> get rounds => throw _privateConstructorUsedError;

  /// Serializes this OQContentStructure to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OQContentStructure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OQContentStructureCopyWith<OQContentStructure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OQContentStructureCopyWith<$Res> {
  factory $OQContentStructureCopyWith(
          OQContentStructure value, $Res Function(OQContentStructure) then) =
      _$OQContentStructureCopyWithImpl<$Res, OQContentStructure>;
  @useResult
  $Res call({OQMetadataStructure metadata, List<OQRoundStructure> rounds});

  $OQMetadataStructureCopyWith<$Res> get metadata;
}

/// @nodoc
class _$OQContentStructureCopyWithImpl<$Res, $Val extends OQContentStructure>
    implements $OQContentStructureCopyWith<$Res> {
  _$OQContentStructureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OQContentStructure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
    Object? rounds = null,
  }) {
    return _then(_value.copyWith(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as OQMetadataStructure,
      rounds: null == rounds
          ? _value.rounds
          : rounds // ignore: cast_nullable_to_non_nullable
              as List<OQRoundStructure>,
    ) as $Val);
  }

  /// Create a copy of OQContentStructure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OQMetadataStructureCopyWith<$Res> get metadata {
    return $OQMetadataStructureCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OQContentStructureImplCopyWith<$Res>
    implements $OQContentStructureCopyWith<$Res> {
  factory _$$OQContentStructureImplCopyWith(_$OQContentStructureImpl value,
          $Res Function(_$OQContentStructureImpl) then) =
      __$$OQContentStructureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OQMetadataStructure metadata, List<OQRoundStructure> rounds});

  @override
  $OQMetadataStructureCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$OQContentStructureImplCopyWithImpl<$Res>
    extends _$OQContentStructureCopyWithImpl<$Res, _$OQContentStructureImpl>
    implements _$$OQContentStructureImplCopyWith<$Res> {
  __$$OQContentStructureImplCopyWithImpl(_$OQContentStructureImpl _value,
      $Res Function(_$OQContentStructureImpl) _then)
      : super(_value, _then);

  /// Create a copy of OQContentStructure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
    Object? rounds = null,
  }) {
    return _then(_$OQContentStructureImpl(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as OQMetadataStructure,
      rounds: null == rounds
          ? _value._rounds
          : rounds // ignore: cast_nullable_to_non_nullable
              as List<OQRoundStructure>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OQContentStructureImpl implements _OQContentStructure {
  const _$OQContentStructureImpl(
      {required this.metadata, required final List<OQRoundStructure> rounds})
      : _rounds = rounds;

  factory _$OQContentStructureImpl.fromJson(Map<String, dynamic> json) =>
      _$$OQContentStructureImplFromJson(json);

  @override
  final OQMetadataStructure metadata;
  final List<OQRoundStructure> _rounds;
  @override
  List<OQRoundStructure> get rounds {
    if (_rounds is EqualUnmodifiableListView) return _rounds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rounds);
  }

  @override
  String toString() {
    return 'OQContentStructure(metadata: $metadata, rounds: $rounds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OQContentStructureImpl &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            const DeepCollectionEquality().equals(other._rounds, _rounds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, metadata, const DeepCollectionEquality().hash(_rounds));

  /// Create a copy of OQContentStructure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OQContentStructureImplCopyWith<_$OQContentStructureImpl> get copyWith =>
      __$$OQContentStructureImplCopyWithImpl<_$OQContentStructureImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OQContentStructureImplToJson(
      this,
    );
  }
}

abstract class _OQContentStructure implements OQContentStructure {
  const factory _OQContentStructure(
      {required final OQMetadataStructure metadata,
      required final List<OQRoundStructure> rounds}) = _$OQContentStructureImpl;

  factory _OQContentStructure.fromJson(Map<String, dynamic> json) =
      _$OQContentStructureImpl.fromJson;

  @override
  OQMetadataStructure get metadata;
  @override
  List<OQRoundStructure> get rounds;

  /// Create a copy of OQContentStructure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OQContentStructureImplCopyWith<_$OQContentStructureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
