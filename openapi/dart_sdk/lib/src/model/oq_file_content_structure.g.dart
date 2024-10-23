// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oq_file_content_structure.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OQFileContentStructure extends OQFileContentStructure {
  @override
  final String? sha256;
  @override
  final String? type;

  factory _$OQFileContentStructure(
          [void Function(OQFileContentStructureBuilder)? updates]) =>
      (new OQFileContentStructureBuilder()..update(updates))._build();

  _$OQFileContentStructure._({this.sha256, this.type}) : super._();

  @override
  OQFileContentStructure rebuild(
          void Function(OQFileContentStructureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OQFileContentStructureBuilder toBuilder() =>
      new OQFileContentStructureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OQFileContentStructure &&
        sha256 == other.sha256 &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sha256.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OQFileContentStructure')
          ..add('sha256', sha256)
          ..add('type', type))
        .toString();
  }
}

class OQFileContentStructureBuilder
    implements Builder<OQFileContentStructure, OQFileContentStructureBuilder> {
  _$OQFileContentStructure? _$v;

  String? _sha256;
  String? get sha256 => _$this._sha256;
  set sha256(String? sha256) => _$this._sha256 = sha256;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  OQFileContentStructureBuilder() {
    OQFileContentStructure._defaults(this);
  }

  OQFileContentStructureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sha256 = $v.sha256;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OQFileContentStructure other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OQFileContentStructure;
  }

  @override
  void update(void Function(OQFileContentStructureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OQFileContentStructure build() => _build();

  _$OQFileContentStructure _build() {
    final _$result =
        _$v ?? new _$OQFileContentStructure._(sha256: sha256, type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
