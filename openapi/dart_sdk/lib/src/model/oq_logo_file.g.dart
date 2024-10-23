// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oq_logo_file.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OQLogoFile extends OQLogoFile {
  @override
  final OQFileContentStructure? file;

  factory _$OQLogoFile([void Function(OQLogoFileBuilder)? updates]) =>
      (new OQLogoFileBuilder()..update(updates))._build();

  _$OQLogoFile._({this.file}) : super._();

  @override
  OQLogoFile rebuild(void Function(OQLogoFileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OQLogoFileBuilder toBuilder() => new OQLogoFileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OQLogoFile && file == other.file;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, file.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OQLogoFile')..add('file', file))
        .toString();
  }
}

class OQLogoFileBuilder implements Builder<OQLogoFile, OQLogoFileBuilder> {
  _$OQLogoFile? _$v;

  OQFileContentStructureBuilder? _file;
  OQFileContentStructureBuilder get file =>
      _$this._file ??= new OQFileContentStructureBuilder();
  set file(OQFileContentStructureBuilder? file) => _$this._file = file;

  OQLogoFileBuilder() {
    OQLogoFile._defaults(this);
  }

  OQLogoFileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _file = $v.file?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OQLogoFile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OQLogoFile;
  }

  @override
  void update(void Function(OQLogoFileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OQLogoFile build() => _build();

  _$OQLogoFile _build() {
    _$OQLogoFile _$result;
    try {
      _$result = _$v ?? new _$OQLogoFile._(file: _file?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'file';
        _file?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OQLogoFile', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
