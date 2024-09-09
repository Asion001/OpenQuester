// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_package_upload_post400_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1PackageUploadPost400Response extends V1PackageUploadPost400Response {
  @override
  final String? error;

  factory _$V1PackageUploadPost400Response(
          [void Function(V1PackageUploadPost400ResponseBuilder)? updates]) =>
      (new V1PackageUploadPost400ResponseBuilder()..update(updates))._build();

  _$V1PackageUploadPost400Response._({this.error}) : super._();

  @override
  V1PackageUploadPost400Response rebuild(
          void Function(V1PackageUploadPost400ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1PackageUploadPost400ResponseBuilder toBuilder() =>
      new V1PackageUploadPost400ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1PackageUploadPost400Response && error == other.error;
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
    return (newBuiltValueToStringHelper(r'V1PackageUploadPost400Response')
          ..add('error', error))
        .toString();
  }
}

class V1PackageUploadPost400ResponseBuilder
    implements
        Builder<V1PackageUploadPost400Response,
            V1PackageUploadPost400ResponseBuilder> {
  _$V1PackageUploadPost400Response? _$v;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  V1PackageUploadPost400ResponseBuilder() {
    V1PackageUploadPost400Response._defaults(this);
  }

  V1PackageUploadPost400ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1PackageUploadPost400Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1PackageUploadPost400Response;
  }

  @override
  void update(void Function(V1PackageUploadPost400ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1PackageUploadPost400Response build() => _build();

  _$V1PackageUploadPost400Response _build() {
    final _$result =
        _$v ?? new _$V1PackageUploadPost400Response._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
