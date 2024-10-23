// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_file_get_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1FileGetRequest extends V1FileGetRequest {
  @override
  final String? filename;

  factory _$V1FileGetRequest(
          [void Function(V1FileGetRequestBuilder)? updates]) =>
      (new V1FileGetRequestBuilder()..update(updates))._build();

  _$V1FileGetRequest._({this.filename}) : super._();

  @override
  V1FileGetRequest rebuild(void Function(V1FileGetRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1FileGetRequestBuilder toBuilder() =>
      new V1FileGetRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1FileGetRequest && filename == other.filename;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filename.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1FileGetRequest')
          ..add('filename', filename))
        .toString();
  }
}

class V1FileGetRequestBuilder
    implements Builder<V1FileGetRequest, V1FileGetRequestBuilder> {
  _$V1FileGetRequest? _$v;

  String? _filename;
  String? get filename => _$this._filename;
  set filename(String? filename) => _$this._filename = filename;

  V1FileGetRequestBuilder() {
    V1FileGetRequest._defaults(this);
  }

  V1FileGetRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filename = $v.filename;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1FileGetRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1FileGetRequest;
  }

  @override
  void update(void Function(V1FileGetRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1FileGetRequest build() => _build();

  _$V1FileGetRequest _build() {
    final _$result = _$v ?? new _$V1FileGetRequest._(filename: filename);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
