// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_creation_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackageCreationInput _$PackageCreationInputFromJson(Map<String, dynamic> json) {
  return _PackageCreationInput.fromJson(json);
}

/// @nodoc
mixin _$PackageCreationInput {
  PackageCreateInputData get content => throw _privateConstructorUsedError;

  /// Serializes this PackageCreationInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackageCreationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackageCreationInputCopyWith<PackageCreationInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageCreationInputCopyWith<$Res> {
  factory $PackageCreationInputCopyWith(PackageCreationInput value,
          $Res Function(PackageCreationInput) then) =
      _$PackageCreationInputCopyWithImpl<$Res, PackageCreationInput>;
  @useResult
  $Res call({PackageCreateInputData content});

  $PackageCreateInputDataCopyWith<$Res> get content;
}

/// @nodoc
class _$PackageCreationInputCopyWithImpl<$Res,
        $Val extends PackageCreationInput>
    implements $PackageCreationInputCopyWith<$Res> {
  _$PackageCreationInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackageCreationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as PackageCreateInputData,
    ) as $Val);
  }

  /// Create a copy of PackageCreationInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PackageCreateInputDataCopyWith<$Res> get content {
    return $PackageCreateInputDataCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PackageCreationInputImplCopyWith<$Res>
    implements $PackageCreationInputCopyWith<$Res> {
  factory _$$PackageCreationInputImplCopyWith(_$PackageCreationInputImpl value,
          $Res Function(_$PackageCreationInputImpl) then) =
      __$$PackageCreationInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PackageCreateInputData content});

  @override
  $PackageCreateInputDataCopyWith<$Res> get content;
}

/// @nodoc
class __$$PackageCreationInputImplCopyWithImpl<$Res>
    extends _$PackageCreationInputCopyWithImpl<$Res, _$PackageCreationInputImpl>
    implements _$$PackageCreationInputImplCopyWith<$Res> {
  __$$PackageCreationInputImplCopyWithImpl(_$PackageCreationInputImpl _value,
      $Res Function(_$PackageCreationInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageCreationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$PackageCreationInputImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as PackageCreateInputData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageCreationInputImpl implements _PackageCreationInput {
  const _$PackageCreationInputImpl({required this.content});

  factory _$PackageCreationInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageCreationInputImplFromJson(json);

  @override
  final PackageCreateInputData content;

  @override
  String toString() {
    return 'PackageCreationInput(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageCreationInputImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  /// Create a copy of PackageCreationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageCreationInputImplCopyWith<_$PackageCreationInputImpl>
      get copyWith =>
          __$$PackageCreationInputImplCopyWithImpl<_$PackageCreationInputImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageCreationInputImplToJson(
      this,
    );
  }
}

abstract class _PackageCreationInput implements PackageCreationInput {
  const factory _PackageCreationInput(
          {required final PackageCreateInputData content}) =
      _$PackageCreationInputImpl;

  factory _PackageCreationInput.fromJson(Map<String, dynamic> json) =
      _$PackageCreationInputImpl.fromJson;

  @override
  PackageCreateInputData get content;

  /// Create a copy of PackageCreationInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageCreationInputImplCopyWith<_$PackageCreationInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
