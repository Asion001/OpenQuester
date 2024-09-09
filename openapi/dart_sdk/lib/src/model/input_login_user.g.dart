// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_login_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InputLoginUser extends InputLoginUser {
  @override
  final String login;
  @override
  final String password;

  factory _$InputLoginUser([void Function(InputLoginUserBuilder)? updates]) =>
      (new InputLoginUserBuilder()..update(updates))._build();

  _$InputLoginUser._({required this.login, required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(login, r'InputLoginUser', 'login');
    BuiltValueNullFieldError.checkNotNull(
        password, r'InputLoginUser', 'password');
  }

  @override
  InputLoginUser rebuild(void Function(InputLoginUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InputLoginUserBuilder toBuilder() =>
      new InputLoginUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InputLoginUser &&
        login == other.login &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, login.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InputLoginUser')
          ..add('login', login)
          ..add('password', password))
        .toString();
  }
}

class InputLoginUserBuilder
    implements Builder<InputLoginUser, InputLoginUserBuilder> {
  _$InputLoginUser? _$v;

  String? _login;
  String? get login => _$this._login;
  set login(String? login) => _$this._login = login;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  InputLoginUserBuilder() {
    InputLoginUser._defaults(this);
  }

  InputLoginUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _login = $v.login;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InputLoginUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InputLoginUser;
  }

  @override
  void update(void Function(InputLoginUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InputLoginUser build() => _build();

  _$InputLoginUser _build() {
    final _$result = _$v ??
        new _$InputLoginUser._(
            login: BuiltValueNullFieldError.checkNotNull(
                login, r'InputLoginUser', 'login'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'InputLoginUser', 'password'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
