// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_user_id_delete400_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1UserIdDelete400Response extends V1UserIdDelete400Response {
  @override
  final String? error;

  factory _$V1UserIdDelete400Response(
          [void Function(V1UserIdDelete400ResponseBuilder)? updates]) =>
      (new V1UserIdDelete400ResponseBuilder()..update(updates))._build();

  _$V1UserIdDelete400Response._({this.error}) : super._();

  @override
  V1UserIdDelete400Response rebuild(
          void Function(V1UserIdDelete400ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1UserIdDelete400ResponseBuilder toBuilder() =>
      new V1UserIdDelete400ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1UserIdDelete400Response && error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1UserIdDelete400Response')
          ..add('error', error))
        .toString();
  }
}

class V1UserIdDelete400ResponseBuilder
    implements
        Builder<V1UserIdDelete400Response, V1UserIdDelete400ResponseBuilder> {
  _$V1UserIdDelete400Response? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  V1UserIdDelete400ResponseBuilder() {
    V1UserIdDelete400Response._defaults(this);
  }

  V1UserIdDelete400ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1UserIdDelete400Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1UserIdDelete400Response;
  }

  @override
  void update(void Function(V1UserIdDelete400ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1UserIdDelete400Response build() => _build();

  _$V1UserIdDelete400Response _build() {
    final _$result = _$v ?? new _$V1UserIdDelete400Response._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
