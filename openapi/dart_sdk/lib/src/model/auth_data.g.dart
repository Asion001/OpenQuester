// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthData extends AuthData {
  @override
  final String accessToken;
  @override
  final String refreshToken;

  factory _$AuthData([void Function(AuthDataBuilder)? updates]) =>
      (new AuthDataBuilder()..update(updates))._build();

  _$AuthData._({required this.accessToken, required this.refreshToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessToken, r'AuthData', 'accessToken');
    BuiltValueNullFieldError.checkNotNull(
        refreshToken, r'AuthData', 'refreshToken');
  }

  @override
  AuthData rebuild(void Function(AuthDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthDataBuilder toBuilder() => new AuthDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthData &&
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
    return (newBuiltValueToStringHelper(r'AuthData')
          ..add('accessToken', accessToken)
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class AuthDataBuilder implements Builder<AuthData, AuthDataBuilder> {
  _$AuthData? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  AuthDataBuilder() {
    AuthData._defaults(this);
  }

  AuthDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthData;
  }

  @override
  void update(void Function(AuthDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthData build() => _build();

  _$AuthData _build() {
    final _$result = _$v ??
        new _$AuthData._(
            accessToken: BuiltValueNullFieldError.checkNotNull(
                accessToken, r'AuthData', 'accessToken'),
            refreshToken: BuiltValueNullFieldError.checkNotNull(
                refreshToken, r'AuthData', 'refreshToken'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
