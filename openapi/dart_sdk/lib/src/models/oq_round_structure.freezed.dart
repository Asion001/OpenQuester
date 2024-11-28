// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oq_round_structure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OQRoundStructure _$OQRoundStructureFromJson(Map<String, dynamic> json) {
  return _OQRoundStructure.fromJson(json);
}

/// @nodoc
mixin _$OQRoundStructure {
  String get name => throw _privateConstructorUsedError;
  List<OQThemeStructure> get themes => throw _privateConstructorUsedError;

  /// Serializes this OQRoundStructure to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OQRoundStructure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OQRoundStructureCopyWith<OQRoundStructure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OQRoundStructureCopyWith<$Res> {
  factory $OQRoundStructureCopyWith(
          OQRoundStructure value, $Res Function(OQRoundStructure) then) =
      _$OQRoundStructureCopyWithImpl<$Res, OQRoundStructure>;
  @useResult
  $Res call({String name, List<OQThemeStructure> themes});
}

/// @nodoc
class _$OQRoundStructureCopyWithImpl<$Res, $Val extends OQRoundStructure>
    implements $OQRoundStructureCopyWith<$Res> {
  _$OQRoundStructureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OQRoundStructure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? themes = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      themes: null == themes
          ? _value.themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<OQThemeStructure>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OQRoundStructureImplCopyWith<$Res>
    implements $OQRoundStructureCopyWith<$Res> {
  factory _$$OQRoundStructureImplCopyWith(_$OQRoundStructureImpl value,
          $Res Function(_$OQRoundStructureImpl) then) =
      __$$OQRoundStructureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<OQThemeStructure> themes});
}

/// @nodoc
class __$$OQRoundStructureImplCopyWithImpl<$Res>
    extends _$OQRoundStructureCopyWithImpl<$Res, _$OQRoundStructureImpl>
    implements _$$OQRoundStructureImplCopyWith<$Res> {
  __$$OQRoundStructureImplCopyWithImpl(_$OQRoundStructureImpl _value,
      $Res Function(_$OQRoundStructureImpl) _then)
      : super(_value, _then);

  /// Create a copy of OQRoundStructure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? themes = null,
  }) {
    return _then(_$OQRoundStructureImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      themes: null == themes
          ? _value._themes
          : themes // ignore: cast_nullable_to_non_nullable
              as List<OQThemeStructure>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OQRoundStructureImpl implements _OQRoundStructure {
  const _$OQRoundStructureImpl(
      {required this.name, required final List<OQThemeStructure> themes})
      : _themes = themes;

  factory _$OQRoundStructureImpl.fromJson(Map<String, dynamic> json) =>
      _$$OQRoundStructureImplFromJson(json);

  @override
  final String name;
  final List<OQThemeStructure> _themes;
  @override
  List<OQThemeStructure> get themes {
    if (_themes is EqualUnmodifiableListView) return _themes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_themes);
  }

  @override
  String toString() {
    return 'OQRoundStructure(name: $name, themes: $themes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OQRoundStructureImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._themes, _themes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_themes));

  /// Create a copy of OQRoundStructure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OQRoundStructureImplCopyWith<_$OQRoundStructureImpl> get copyWith =>
      __$$OQRoundStructureImplCopyWithImpl<_$OQRoundStructureImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OQRoundStructureImplToJson(
      this,
    );
  }
}

abstract class _OQRoundStructure implements OQRoundStructure {
  const factory _OQRoundStructure(
      {required final String name,
      required final List<OQThemeStructure> themes}) = _$OQRoundStructureImpl;

  factory _OQRoundStructure.fromJson(Map<String, dynamic> json) =
      _$OQRoundStructureImpl.fromJson;

  @override
  String get name;
  @override
  List<OQThemeStructure> get themes;

  /// Create a copy of OQRoundStructure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OQRoundStructureImplCopyWith<_$OQRoundStructureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
