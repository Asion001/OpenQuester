// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_user_id_get404_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1UserIdGet404Response extends V1UserIdGet404Response {
  @override
  final String? error;

  factory _$V1UserIdGet404Response(
          [void Function(V1UserIdGet404ResponseBuilder)? updates]) =>
      (new V1UserIdGet404ResponseBuilder()..update(updates))._build();

  _$V1UserIdGet404Response._({this.error}) : super._();

  @override
  V1UserIdGet404Response rebuild(
          void Function(V1UserIdGet404ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1UserIdGet404ResponseBuilder toBuilder() =>
      new V1UserIdGet404ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1UserIdGet404Response && error == other.error;
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
    return (newBuiltValueToStringHelper(r'V1UserIdGet404Response')
          ..add('error', error))
        .toString();
  }
}

class V1UserIdGet404ResponseBuilder
    implements Builder<V1UserIdGet404Response, V1UserIdGet404ResponseBuilder> {
  _$V1UserIdGet404Response? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  V1UserIdGet404ResponseBuilder() {
    V1UserIdGet404Response._defaults(this);
  }

  V1UserIdGet404ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1UserIdGet404Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1UserIdGet404Response;
  }

  @override
  void update(void Function(V1UserIdGet404ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1UserIdGet404Response build() => _build();

  _$V1UserIdGet404Response _build() {
    final _$result = _$v ?? new _$V1UserIdGet404Response._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
