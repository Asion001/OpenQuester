// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_auth_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResponseAuthData extends ResponseAuthData {
  @override
  final String accessToken;
  @override
  final String refreshToken;

  factory _$ResponseAuthData(
          [void Function(ResponseAuthDataBuilder)? updates]) =>
      (new ResponseAuthDataBuilder()..update(updates))._build();

  _$ResponseAuthData._({required this.accessToken, required this.refreshToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessToken, r'ResponseAuthData', 'accessToken');
    BuiltValueNullFieldError.checkNotNull(
        refreshToken, r'ResponseAuthData', 'refreshToken');
  }

  @override
  ResponseAuthData rebuild(void Function(ResponseAuthDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResponseAuthDataBuilder toBuilder() =>
      new ResponseAuthDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResponseAuthData &&
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
    return (newBuiltValueToStringHelper(r'ResponseAuthData')
          ..add('accessToken', accessToken)
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class ResponseAuthDataBuilder
    implements Builder<ResponseAuthData, ResponseAuthDataBuilder> {
  _$ResponseAuthData? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  ResponseAuthDataBuilder() {
    ResponseAuthData._defaults(this);
  }

  ResponseAuthDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResponseAuthData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResponseAuthData;
  }

  @override
  void update(void Function(ResponseAuthDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResponseAuthData build() => _build();

  _$ResponseAuthData _build() {
    final _$result = _$v ??
        new _$ResponseAuthData._(
            accessToken: BuiltValueNullFieldError.checkNotNull(
                accessToken, r'ResponseAuthData', 'accessToken'),
            refreshToken: BuiltValueNullFieldError.checkNotNull(
                refreshToken, r'ResponseAuthData', 'refreshToken'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
