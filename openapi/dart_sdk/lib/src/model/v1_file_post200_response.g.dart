// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_file_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1FilePost200Response extends V1FilePost200Response {
  @override
  final String? url;

  factory _$V1FilePost200Response(
          [void Function(V1FilePost200ResponseBuilder)? updates]) =>
      (new V1FilePost200ResponseBuilder()..update(updates))._build();

  _$V1FilePost200Response._({this.url}) : super._();

  @override
  V1FilePost200Response rebuild(
          void Function(V1FilePost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1FilePost200ResponseBuilder toBuilder() =>
      new V1FilePost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1FilePost200Response && url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1FilePost200Response')
          ..add('url', url))
        .toString();
  }
}

class V1FilePost200ResponseBuilder
    implements Builder<V1FilePost200Response, V1FilePost200ResponseBuilder> {
  _$V1FilePost200Response? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  V1FilePost200ResponseBuilder() {
    V1FilePost200Response._defaults(this);
  }

  V1FilePost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1FilePost200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1FilePost200Response;
  }

  @override
  void update(void Function(V1FilePost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1FilePost200Response build() => _build();

  _$V1FilePost200Response _build() {
    final _$result = _$v ?? new _$V1FilePost200Response._(url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
