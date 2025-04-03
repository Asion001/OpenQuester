// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackageTag _$PackageTagFromJson(Map<String, dynamic> json) {
  return _PackageTag.fromJson(json);
}

/// @nodoc
mixin _$PackageTag {
  int get id => throw _privateConstructorUsedError;

  /// A single tag for the package
  String get tag => throw _privateConstructorUsedError;

  /// Serializes this PackageTag to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackageTag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackageTagCopyWith<PackageTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageTagCopyWith<$Res> {
  factory $PackageTagCopyWith(
          PackageTag value, $Res Function(PackageTag) then) =
      _$PackageTagCopyWithImpl<$Res, PackageTag>;
  @useResult
  $Res call({int id, String tag});
}

/// @nodoc
class _$PackageTagCopyWithImpl<$Res, $Val extends PackageTag>
    implements $PackageTagCopyWith<$Res> {
  _$PackageTagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackageTag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tag = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageTagImplCopyWith<$Res>
    implements $PackageTagCopyWith<$Res> {
  factory _$$PackageTagImplCopyWith(
          _$PackageTagImpl value, $Res Function(_$PackageTagImpl) then) =
      __$$PackageTagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String tag});
}

/// @nodoc
class __$$PackageTagImplCopyWithImpl<$Res>
    extends _$PackageTagCopyWithImpl<$Res, _$PackageTagImpl>
    implements _$$PackageTagImplCopyWith<$Res> {
  __$$PackageTagImplCopyWithImpl(
      _$PackageTagImpl _value, $Res Function(_$PackageTagImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageTag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tag = null,
  }) {
    return _then(_$PackageTagImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageTagImpl implements _PackageTag {
  const _$PackageTagImpl({required this.id, required this.tag});

  factory _$PackageTagImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageTagImplFromJson(json);

  @override
  final int id;

  /// A single tag for the package
  @override
  final String tag;

  @override
  String toString() {
    return 'PackageTag(id: $id, tag: $tag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageTagImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, tag);

  /// Create a copy of PackageTag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageTagImplCopyWith<_$PackageTagImpl> get copyWith =>
      __$$PackageTagImplCopyWithImpl<_$PackageTagImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageTagImplToJson(
      this,
    );
  }
}

abstract class _PackageTag implements PackageTag {
  const factory _PackageTag(
      {required final int id, required final String tag}) = _$PackageTagImpl;

  factory _PackageTag.fromJson(Map<String, dynamic> json) =
      _$PackageTagImpl.fromJson;

  @override
  int get id;

  /// A single tag for the package
  @override
  String get tag;

  /// Create a copy of PackageTag
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageTagImplCopyWith<_$PackageTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
