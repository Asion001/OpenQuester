// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_info3.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PageInfo3 _$PageInfo3FromJson(Map<String, dynamic> json) {
  return _PageInfo3.fromJson(json);
}

/// @nodoc
mixin _$PageInfo3 {
  int get total => throw _privateConstructorUsedError;

  /// Serializes this PageInfo3 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PageInfo3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PageInfo3CopyWith<PageInfo3> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageInfo3CopyWith<$Res> {
  factory $PageInfo3CopyWith(PageInfo3 value, $Res Function(PageInfo3) then) =
      _$PageInfo3CopyWithImpl<$Res, PageInfo3>;
  @useResult
  $Res call({int total});
}

/// @nodoc
class _$PageInfo3CopyWithImpl<$Res, $Val extends PageInfo3>
    implements $PageInfo3CopyWith<$Res> {
  _$PageInfo3CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PageInfo3
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageInfo3ImplCopyWith<$Res>
    implements $PageInfo3CopyWith<$Res> {
  factory _$$PageInfo3ImplCopyWith(
          _$PageInfo3Impl value, $Res Function(_$PageInfo3Impl) then) =
      __$$PageInfo3ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total});
}

/// @nodoc
class __$$PageInfo3ImplCopyWithImpl<$Res>
    extends _$PageInfo3CopyWithImpl<$Res, _$PageInfo3Impl>
    implements _$$PageInfo3ImplCopyWith<$Res> {
  __$$PageInfo3ImplCopyWithImpl(
      _$PageInfo3Impl _value, $Res Function(_$PageInfo3Impl) _then)
      : super(_value, _then);

  /// Create a copy of PageInfo3
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
  }) {
    return _then(_$PageInfo3Impl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PageInfo3Impl implements _PageInfo3 {
  const _$PageInfo3Impl({required this.total});

  factory _$PageInfo3Impl.fromJson(Map<String, dynamic> json) =>
      _$$PageInfo3ImplFromJson(json);

  @override
  final int total;

  @override
  String toString() {
    return 'PageInfo3(total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageInfo3Impl &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total);

  /// Create a copy of PageInfo3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageInfo3ImplCopyWith<_$PageInfo3Impl> get copyWith =>
      __$$PageInfo3ImplCopyWithImpl<_$PageInfo3Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageInfo3ImplToJson(
      this,
    );
  }
}

abstract class _PageInfo3 implements PageInfo3 {
  const factory _PageInfo3({required final int total}) = _$PageInfo3Impl;

  factory _PageInfo3.fromJson(Map<String, dynamic> json) =
      _$PageInfo3Impl.fromJson;

  @override
  int get total;

  /// Create a copy of PageInfo3
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageInfo3ImplCopyWith<_$PageInfo3Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
