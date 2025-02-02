// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_games.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginatedGames _$PaginatedGamesFromJson(Map<String, dynamic> json) {
  return _PaginatedGames.fromJson(json);
}

/// @nodoc
mixin _$PaginatedGames {
  List<IGameListItem> get data => throw _privateConstructorUsedError;
  PageInfo get pageInfo => throw _privateConstructorUsedError;

  /// Serializes this PaginatedGames to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginatedGames
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginatedGamesCopyWith<PaginatedGames> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedGamesCopyWith<$Res> {
  factory $PaginatedGamesCopyWith(
          PaginatedGames value, $Res Function(PaginatedGames) then) =
      _$PaginatedGamesCopyWithImpl<$Res, PaginatedGames>;
  @useResult
  $Res call({List<IGameListItem> data, PageInfo pageInfo});

  $PageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class _$PaginatedGamesCopyWithImpl<$Res, $Val extends PaginatedGames>
    implements $PaginatedGamesCopyWith<$Res> {
  _$PaginatedGamesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginatedGames
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pageInfo = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<IGameListItem>,
      pageInfo: null == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
    ) as $Val);
  }

  /// Create a copy of PaginatedGames
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageInfoCopyWith<$Res> get pageInfo {
    return $PageInfoCopyWith<$Res>(_value.pageInfo, (value) {
      return _then(_value.copyWith(pageInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaginatedGamesImplCopyWith<$Res>
    implements $PaginatedGamesCopyWith<$Res> {
  factory _$$PaginatedGamesImplCopyWith(_$PaginatedGamesImpl value,
          $Res Function(_$PaginatedGamesImpl) then) =
      __$$PaginatedGamesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<IGameListItem> data, PageInfo pageInfo});

  @override
  $PageInfoCopyWith<$Res> get pageInfo;
}

/// @nodoc
class __$$PaginatedGamesImplCopyWithImpl<$Res>
    extends _$PaginatedGamesCopyWithImpl<$Res, _$PaginatedGamesImpl>
    implements _$$PaginatedGamesImplCopyWith<$Res> {
  __$$PaginatedGamesImplCopyWithImpl(
      _$PaginatedGamesImpl _value, $Res Function(_$PaginatedGamesImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginatedGames
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pageInfo = null,
  }) {
    return _then(_$PaginatedGamesImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<IGameListItem>,
      pageInfo: null == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginatedGamesImpl implements _PaginatedGames {
  const _$PaginatedGamesImpl(
      {required final List<IGameListItem> data, required this.pageInfo})
      : _data = data;

  factory _$PaginatedGamesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginatedGamesImplFromJson(json);

  final List<IGameListItem> _data;
  @override
  List<IGameListItem> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final PageInfo pageInfo;

  @override
  String toString() {
    return 'PaginatedGames(data: $data, pageInfo: $pageInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedGamesImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pageInfo, pageInfo) ||
                other.pageInfo == pageInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), pageInfo);

  /// Create a copy of PaginatedGames
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedGamesImplCopyWith<_$PaginatedGamesImpl> get copyWith =>
      __$$PaginatedGamesImplCopyWithImpl<_$PaginatedGamesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginatedGamesImplToJson(
      this,
    );
  }
}

abstract class _PaginatedGames implements PaginatedGames {
  const factory _PaginatedGames(
      {required final List<IGameListItem> data,
      required final PageInfo pageInfo}) = _$PaginatedGamesImpl;

  factory _PaginatedGames.fromJson(Map<String, dynamic> json) =
      _$PaginatedGamesImpl.fromJson;

  @override
  List<IGameListItem> get data;
  @override
  PageInfo get pageInfo;

  /// Create a copy of PaginatedGames
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginatedGamesImplCopyWith<_$PaginatedGamesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
