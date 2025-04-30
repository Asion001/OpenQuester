// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_io_game_join_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SocketIOGameJoinMeta _$SocketIOGameJoinMetaFromJson(Map<String, dynamic> json) {
  return _SocketIOGameJoinMeta.fromJson(json);
}

/// @nodoc
mixin _$SocketIOGameJoinMeta {
  String get title => throw _privateConstructorUsedError;

  /// Serializes this SocketIOGameJoinMeta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocketIOGameJoinMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocketIOGameJoinMetaCopyWith<SocketIOGameJoinMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketIOGameJoinMetaCopyWith<$Res> {
  factory $SocketIOGameJoinMetaCopyWith(SocketIOGameJoinMeta value,
          $Res Function(SocketIOGameJoinMeta) then) =
      _$SocketIOGameJoinMetaCopyWithImpl<$Res, SocketIOGameJoinMeta>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class _$SocketIOGameJoinMetaCopyWithImpl<$Res,
        $Val extends SocketIOGameJoinMeta>
    implements $SocketIOGameJoinMetaCopyWith<$Res> {
  _$SocketIOGameJoinMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocketIOGameJoinMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocketIOGameJoinMetaImplCopyWith<$Res>
    implements $SocketIOGameJoinMetaCopyWith<$Res> {
  factory _$$SocketIOGameJoinMetaImplCopyWith(_$SocketIOGameJoinMetaImpl value,
          $Res Function(_$SocketIOGameJoinMetaImpl) then) =
      __$$SocketIOGameJoinMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$SocketIOGameJoinMetaImplCopyWithImpl<$Res>
    extends _$SocketIOGameJoinMetaCopyWithImpl<$Res, _$SocketIOGameJoinMetaImpl>
    implements _$$SocketIOGameJoinMetaImplCopyWith<$Res> {
  __$$SocketIOGameJoinMetaImplCopyWithImpl(_$SocketIOGameJoinMetaImpl _value,
      $Res Function(_$SocketIOGameJoinMetaImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocketIOGameJoinMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$SocketIOGameJoinMetaImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocketIOGameJoinMetaImpl implements _SocketIOGameJoinMeta {
  const _$SocketIOGameJoinMetaImpl({required this.title});

  factory _$SocketIOGameJoinMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocketIOGameJoinMetaImplFromJson(json);

  @override
  final String title;

  @override
  String toString() {
    return 'SocketIOGameJoinMeta(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocketIOGameJoinMetaImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title);

  /// Create a copy of SocketIOGameJoinMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocketIOGameJoinMetaImplCopyWith<_$SocketIOGameJoinMetaImpl>
      get copyWith =>
          __$$SocketIOGameJoinMetaImplCopyWithImpl<_$SocketIOGameJoinMetaImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocketIOGameJoinMetaImplToJson(
      this,
    );
  }
}

abstract class _SocketIOGameJoinMeta implements SocketIOGameJoinMeta {
  const factory _SocketIOGameJoinMeta({required final String title}) =
      _$SocketIOGameJoinMetaImpl;

  factory _SocketIOGameJoinMeta.fromJson(Map<String, dynamic> json) =
      _$SocketIOGameJoinMetaImpl.fromJson;

  @override
  String get title;

  /// Create a copy of SocketIOGameJoinMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocketIOGameJoinMetaImplCopyWith<_$SocketIOGameJoinMetaImpl>
      get copyWith => throw _privateConstructorUsedError;
}
