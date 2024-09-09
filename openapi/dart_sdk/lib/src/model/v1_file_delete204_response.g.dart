// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_file_delete204_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1FileDelete204Response extends V1FileDelete204Response {
  @override
  final V1FileDelete204ResponseMessage? message;

  factory _$V1FileDelete204Response(
          [void Function(V1FileDelete204ResponseBuilder)? updates]) =>
      (new V1FileDelete204ResponseBuilder()..update(updates))._build();

  _$V1FileDelete204Response._({this.message}) : super._();

  @override
  V1FileDelete204Response rebuild(
          void Function(V1FileDelete204ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1FileDelete204ResponseBuilder toBuilder() =>
      new V1FileDelete204ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1FileDelete204Response && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1FileDelete204Response')
          ..add('message', message))
        .toString();
  }
}

class V1FileDelete204ResponseBuilder
    implements
        Builder<V1FileDelete204Response, V1FileDelete204ResponseBuilder> {
  _$V1FileDelete204Response? _$v;

  V1FileDelete204ResponseMessageBuilder? _message;
  V1FileDelete204ResponseMessageBuilder get message =>
      _$this._message ??= new V1FileDelete204ResponseMessageBuilder();
  set message(V1FileDelete204ResponseMessageBuilder? message) =>
      _$this._message = message;

  V1FileDelete204ResponseBuilder() {
    V1FileDelete204Response._defaults(this);
  }

  V1FileDelete204ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1FileDelete204Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1FileDelete204Response;
  }

  @override
  void update(void Function(V1FileDelete204ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1FileDelete204Response build() => _build();

  _$V1FileDelete204Response _build() {
    _$V1FileDelete204Response _$result;
    try {
      _$result =
          _$v ?? new _$V1FileDelete204Response._(message: _message?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'message';
        _message?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'V1FileDelete204Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
