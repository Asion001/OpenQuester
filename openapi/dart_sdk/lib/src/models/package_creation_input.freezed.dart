// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_creation_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PackageCreationInput {
  PackageCreateInputData get content;

  /// Create a copy of PackageCreationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PackageCreationInputCopyWith<PackageCreationInput> get copyWith =>
      _$PackageCreationInputCopyWithImpl<PackageCreationInput>(
          this as PackageCreationInput, _$identity);

  /// Serializes this PackageCreationInput to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PackageCreationInput &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  @override
  String toString() {
    return 'PackageCreationInput(content: $content)';
  }
}

/// @nodoc
abstract mixin class $PackageCreationInputCopyWith<$Res> {
  factory $PackageCreationInputCopyWith(PackageCreationInput value,
          $Res Function(PackageCreationInput) _then) =
      _$PackageCreationInputCopyWithImpl;
  @useResult
  $Res call({PackageCreateInputData content});

  $PackageCreateInputDataCopyWith<$Res> get content;
}

/// @nodoc
class _$PackageCreationInputCopyWithImpl<$Res>
    implements $PackageCreationInputCopyWith<$Res> {
  _$PackageCreationInputCopyWithImpl(this._self, this._then);

  final PackageCreationInput _self;
  final $Res Function(PackageCreationInput) _then;

  /// Create a copy of PackageCreationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_self.copyWith(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as PackageCreateInputData,
    ));
  }

  /// Create a copy of PackageCreationInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PackageCreateInputDataCopyWith<$Res> get content {
    return $PackageCreateInputDataCopyWith<$Res>(_self.content, (value) {
      return _then(_self.copyWith(content: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _PackageCreationInput implements PackageCreationInput {
  const _PackageCreationInput({required this.content});
  factory _PackageCreationInput.fromJson(Map<String, dynamic> json) =>
      _$PackageCreationInputFromJson(json);

  @override
  final PackageCreateInputData content;

  /// Create a copy of PackageCreationInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PackageCreationInputCopyWith<_PackageCreationInput> get copyWith =>
      __$PackageCreationInputCopyWithImpl<_PackageCreationInput>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PackageCreationInputToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PackageCreationInput &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  @override
  String toString() {
    return 'PackageCreationInput(content: $content)';
  }
}

/// @nodoc
abstract mixin class _$PackageCreationInputCopyWith<$Res>
    implements $PackageCreationInputCopyWith<$Res> {
  factory _$PackageCreationInputCopyWith(_PackageCreationInput value,
          $Res Function(_PackageCreationInput) _then) =
      __$PackageCreationInputCopyWithImpl;
  @override
  @useResult
  $Res call({PackageCreateInputData content});

  @override
  $PackageCreateInputDataCopyWith<$Res> get content;
}

/// @nodoc
class __$PackageCreationInputCopyWithImpl<$Res>
    implements _$PackageCreationInputCopyWith<$Res> {
  __$PackageCreationInputCopyWithImpl(this._self, this._then);

  final _PackageCreationInput _self;
  final $Res Function(_PackageCreationInput) _then;

  /// Create a copy of PackageCreationInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? content = null,
  }) {
    return _then(_PackageCreationInput(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as PackageCreateInputData,
    ));
  }

  /// Create a copy of PackageCreationInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PackageCreateInputDataCopyWith<$Res> get content {
    return $PackageCreateInputDataCopyWith<$Res>(_self.content, (value) {
      return _then(_self.copyWith(content: value));
    });
  }
}

// dart format on
