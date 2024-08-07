// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_auth_refresh_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1AuthRefreshPostRequest extends V1AuthRefreshPostRequest {
  @override
  final String refreshToken;

  factory _$V1AuthRefreshPostRequest(
          [void Function(V1AuthRefreshPostRequestBuilder)? updates]) =>
      (new V1AuthRefreshPostRequestBuilder()..update(updates))._build();

  _$V1AuthRefreshPostRequest._({required this.refreshToken}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        refreshToken, r'V1AuthRefreshPostRequest', 'refreshToken');
  }

  @override
  V1AuthRefreshPostRequest rebuild(
          void Function(V1AuthRefreshPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1AuthRefreshPostRequestBuilder toBuilder() =>
      new V1AuthRefreshPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1AuthRefreshPostRequest &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1AuthRefreshPostRequest')
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class V1AuthRefreshPostRequestBuilder
    implements
        Builder<V1AuthRefreshPostRequest, V1AuthRefreshPostRequestBuilder> {
  _$V1AuthRefreshPostRequest? _$v;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  V1AuthRefreshPostRequestBuilder() {
    V1AuthRefreshPostRequest._defaults(this);
  }

  V1AuthRefreshPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1AuthRefreshPostRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1AuthRefreshPostRequest;
  }

  @override
  void update(void Function(V1AuthRefreshPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1AuthRefreshPostRequest build() => _build();

  _$V1AuthRefreshPostRequest _build() {
    final _$result = _$v ??
        new _$V1AuthRefreshPostRequest._(
            refreshToken: BuiltValueNullFieldError.checkNotNull(
                refreshToken, r'V1AuthRefreshPostRequest', 'refreshToken'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
