// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_auth_register_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1AuthRegisterPostRequest extends V1AuthRegisterPostRequest {
  @override
  final String name;
  @override
  final String email;
  @override
  final String password;

  factory _$V1AuthRegisterPostRequest(
          [void Function(V1AuthRegisterPostRequestBuilder)? updates]) =>
      (new V1AuthRegisterPostRequestBuilder()..update(updates))._build();

  _$V1AuthRegisterPostRequest._(
      {required this.name, required this.email, required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'V1AuthRegisterPostRequest', 'name');
    BuiltValueNullFieldError.checkNotNull(
        email, r'V1AuthRegisterPostRequest', 'email');
    BuiltValueNullFieldError.checkNotNull(
        password, r'V1AuthRegisterPostRequest', 'password');
  }

  @override
  V1AuthRegisterPostRequest rebuild(
          void Function(V1AuthRegisterPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1AuthRegisterPostRequestBuilder toBuilder() =>
      new V1AuthRegisterPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1AuthRegisterPostRequest &&
        name == other.name &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1AuthRegisterPostRequest')
          ..add('name', name)
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class V1AuthRegisterPostRequestBuilder
    implements
        Builder<V1AuthRegisterPostRequest, V1AuthRegisterPostRequestBuilder> {
  _$V1AuthRegisterPostRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  V1AuthRegisterPostRequestBuilder() {
    V1AuthRegisterPostRequest._defaults(this);
  }

  V1AuthRegisterPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1AuthRegisterPostRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1AuthRegisterPostRequest;
  }

  @override
  void update(void Function(V1AuthRegisterPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1AuthRegisterPostRequest build() => _build();

  _$V1AuthRegisterPostRequest _build() {
    final _$result = _$v ??
        new _$V1AuthRegisterPostRequest._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'V1AuthRegisterPostRequest', 'name'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'V1AuthRegisterPostRequest', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'V1AuthRegisterPostRequest', 'password'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
