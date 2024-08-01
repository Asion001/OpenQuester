// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_auth_login_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1AuthLoginPostRequest extends V1AuthLoginPostRequest {
  @override
  final String email;
  @override
  final String password;

  factory _$V1AuthLoginPostRequest(
          [void Function(V1AuthLoginPostRequestBuilder)? updates]) =>
      (new V1AuthLoginPostRequestBuilder()..update(updates))._build();

  _$V1AuthLoginPostRequest._({required this.email, required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        email, r'V1AuthLoginPostRequest', 'email');
    BuiltValueNullFieldError.checkNotNull(
        password, r'V1AuthLoginPostRequest', 'password');
  }

  @override
  V1AuthLoginPostRequest rebuild(
          void Function(V1AuthLoginPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1AuthLoginPostRequestBuilder toBuilder() =>
      new V1AuthLoginPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1AuthLoginPostRequest &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1AuthLoginPostRequest')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class V1AuthLoginPostRequestBuilder
    implements Builder<V1AuthLoginPostRequest, V1AuthLoginPostRequestBuilder> {
  _$V1AuthLoginPostRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  V1AuthLoginPostRequestBuilder() {
    V1AuthLoginPostRequest._defaults(this);
  }

  V1AuthLoginPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1AuthLoginPostRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1AuthLoginPostRequest;
  }

  @override
  void update(void Function(V1AuthLoginPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1AuthLoginPostRequest build() => _build();

  _$V1AuthLoginPostRequest _build() {
    final _$result = _$v ??
        new _$V1AuthLoginPostRequest._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'V1AuthLoginPostRequest', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'V1AuthLoginPostRequest', 'password'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
