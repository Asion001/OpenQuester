// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_auth_refresh_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1AuthRefreshPost200Response extends V1AuthRefreshPost200Response {
  @override
  final String? accessToken;
  @override
  final String? refreshToken;

  factory _$V1AuthRefreshPost200Response(
          [void Function(V1AuthRefreshPost200ResponseBuilder)? updates]) =>
      (new V1AuthRefreshPost200ResponseBuilder()..update(updates))._build();

  _$V1AuthRefreshPost200Response._({this.accessToken, this.refreshToken})
      : super._();

  @override
  V1AuthRefreshPost200Response rebuild(
          void Function(V1AuthRefreshPost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1AuthRefreshPost200ResponseBuilder toBuilder() =>
      new V1AuthRefreshPost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1AuthRefreshPost200Response &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1AuthRefreshPost200Response')
          ..add('accessToken', accessToken)
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class V1AuthRefreshPost200ResponseBuilder
    implements
        Builder<V1AuthRefreshPost200Response,
            V1AuthRefreshPost200ResponseBuilder> {
  _$V1AuthRefreshPost200Response? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  V1AuthRefreshPost200ResponseBuilder() {
    V1AuthRefreshPost200Response._defaults(this);
  }

  V1AuthRefreshPost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1AuthRefreshPost200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1AuthRefreshPost200Response;
  }

  @override
  void update(void Function(V1AuthRefreshPost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1AuthRefreshPost200Response build() => _build();

  _$V1AuthRefreshPost200Response _build() {
    final _$result = _$v ??
        new _$V1AuthRefreshPost200Response._(
            accessToken: accessToken, refreshToken: refreshToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
