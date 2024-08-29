// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateUser extends UpdateUser {
  @override
  final String? name;
  @override
  final String password;
  @override
  final Date? birthday;
  @override
  final Uint8List? avatar;

  factory _$UpdateUser([void Function(UpdateUserBuilder)? updates]) =>
      (new UpdateUserBuilder()..update(updates))._build();

  _$UpdateUser._(
      {this.name, required this.password, this.birthday, this.avatar})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(password, r'UpdateUser', 'password');
  }

  @override
  UpdateUser rebuild(void Function(UpdateUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateUserBuilder toBuilder() => new UpdateUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateUser &&
        name == other.name &&
        password == other.password &&
        birthday == other.birthday &&
        avatar == other.avatar;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, birthday.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateUser')
          ..add('name', name)
          ..add('password', password)
          ..add('birthday', birthday)
          ..add('avatar', avatar))
        .toString();
  }
}

class UpdateUserBuilder implements Builder<UpdateUser, UpdateUserBuilder> {
  _$UpdateUser? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  Date? _birthday;
  Date? get birthday => _$this._birthday;
  set birthday(Date? birthday) => _$this._birthday = birthday;

  Uint8List? _avatar;
  Uint8List? get avatar => _$this._avatar;
  set avatar(Uint8List? avatar) => _$this._avatar = avatar;

  UpdateUserBuilder() {
    UpdateUser._defaults(this);
  }

  UpdateUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _password = $v.password;
      _birthday = $v.birthday;
      _avatar = $v.avatar;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateUser;
  }

  @override
  void update(void Function(UpdateUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateUser build() => _build();

  _$UpdateUser _build() {
    final _$result = _$v ??
        new _$UpdateUser._(
            name: name,
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'UpdateUser', 'password'),
            birthday: birthday,
            avatar: avatar);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
