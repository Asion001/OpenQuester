// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_package_upload_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1PackageUploadPost200Response extends V1PackageUploadPost200Response {
  @override
  final String? filename;

  factory _$V1PackageUploadPost200Response(
          [void Function(V1PackageUploadPost200ResponseBuilder)? updates]) =>
      (new V1PackageUploadPost200ResponseBuilder()..update(updates))._build();

  _$V1PackageUploadPost200Response._({this.filename}) : super._();

  @override
  V1PackageUploadPost200Response rebuild(
          void Function(V1PackageUploadPost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1PackageUploadPost200ResponseBuilder toBuilder() =>
      new V1PackageUploadPost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1PackageUploadPost200Response &&
        filename == other.filename;
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
    return (newBuiltValueToStringHelper(r'V1PackageUploadPost200Response')
          ..add('filename', filename))
        .toString();
  }
}

class V1PackageUploadPost200ResponseBuilder
    implements
        Builder<V1PackageUploadPost200Response,
            V1PackageUploadPost200ResponseBuilder> {
  _$V1PackageUploadPost200Response? _$v;

  String? _filename;
  String? get filename => _$this._filename;
  set filename(String? filename) => _$this._filename = filename;

  V1PackageUploadPost200ResponseBuilder() {
    V1PackageUploadPost200Response._defaults(this);
  }

  V1PackageUploadPost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filename = $v.filename;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1PackageUploadPost200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1PackageUploadPost200Response;
  }

  @override
  void update(void Function(V1PackageUploadPost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1PackageUploadPost200Response build() => _build();

  _$V1PackageUploadPost200Response _build() {
    final _$result =
        _$v ?? new _$V1PackageUploadPost200Response._(filename: filename);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
