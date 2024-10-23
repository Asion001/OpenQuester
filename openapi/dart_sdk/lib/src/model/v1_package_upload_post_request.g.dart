// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_package_upload_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$V1PackageUploadPostRequest extends V1PackageUploadPostRequest {
  @override
  final OQContentStructure content;

  factory _$V1PackageUploadPostRequest(
          [void Function(V1PackageUploadPostRequestBuilder)? updates]) =>
      (new V1PackageUploadPostRequestBuilder()..update(updates))._build();

  _$V1PackageUploadPostRequest._({required this.content}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        content, r'V1PackageUploadPostRequest', 'content');
  }

  @override
  V1PackageUploadPostRequest rebuild(
          void Function(V1PackageUploadPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  V1PackageUploadPostRequestBuilder toBuilder() =>
      new V1PackageUploadPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is V1PackageUploadPostRequest && content == other.content;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'V1PackageUploadPostRequest')
          ..add('content', content))
        .toString();
  }
}

class V1PackageUploadPostRequestBuilder
    implements
        Builder<V1PackageUploadPostRequest, V1PackageUploadPostRequestBuilder> {
  _$V1PackageUploadPostRequest? _$v;

  OQContentStructureBuilder? _content;
  OQContentStructureBuilder get content =>
      _$this._content ??= new OQContentStructureBuilder();
  set content(OQContentStructureBuilder? content) => _$this._content = content;

  V1PackageUploadPostRequestBuilder() {
    V1PackageUploadPostRequest._defaults(this);
  }

  V1PackageUploadPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _content = $v.content.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(V1PackageUploadPostRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$V1PackageUploadPostRequest;
  }

  @override
  void update(void Function(V1PackageUploadPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  V1PackageUploadPostRequest build() => _build();

  _$V1PackageUploadPostRequest _build() {
    _$V1PackageUploadPostRequest _$result;
    try {
      _$result =
          _$v ?? new _$V1PackageUploadPostRequest._(content: content.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'content';
        content.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'V1PackageUploadPostRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
