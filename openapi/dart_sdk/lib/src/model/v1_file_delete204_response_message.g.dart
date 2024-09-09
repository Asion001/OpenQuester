// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_file_delete204_response_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1FileDelete204ResponseMessage extends V1FileDelete204ResponseMessage {
  @override
  final String? message;

  factory _$V1FileDelete204ResponseMessage(
          [void Function(V1FileDelete204ResponseMessageBuilder)? updates]) =>
      (new V1FileDelete204ResponseMessageBuilder()..update(updates))._build();

  _$V1FileDelete204ResponseMessage._({this.message}) : super._();

  @override
  V1FileDelete204ResponseMessage rebuild(
          void Function(V1FileDelete204ResponseMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1FileDelete204ResponseMessageBuilder toBuilder() =>
      new V1FileDelete204ResponseMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1FileDelete204ResponseMessage && message == other.message;
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
    return (newBuiltValueToStringHelper(r'V1FileDelete204ResponseMessage')
          ..add('message', message))
        .toString();
  }
}

class V1FileDelete204ResponseMessageBuilder
    implements
        Builder<V1FileDelete204ResponseMessage,
            V1FileDelete204ResponseMessageBuilder> {
  _$V1FileDelete204ResponseMessage? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  V1FileDelete204ResponseMessageBuilder() {
    V1FileDelete204ResponseMessage._defaults(this);
  }

  V1FileDelete204ResponseMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1FileDelete204ResponseMessage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1FileDelete204ResponseMessage;
  }

  @override
  void update(void Function(V1FileDelete204ResponseMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1FileDelete204ResponseMessage build() => _build();

  _$V1FileDelete204ResponseMessage _build() {
    final _$result =
        _$v ?? new _$V1FileDelete204ResponseMessage._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
