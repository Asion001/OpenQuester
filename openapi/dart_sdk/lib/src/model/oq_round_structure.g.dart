// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oq_round_structure.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OQRoundStructure extends OQRoundStructure {
  @override
  final String? name;
  @override
  final BuiltList<OQThemeStructure>? themes;

  factory _$OQRoundStructure(
          [void Function(OQRoundStructureBuilder)? updates]) =>
      (new OQRoundStructureBuilder()..update(updates))._build();

  _$OQRoundStructure._({this.name, this.themes}) : super._();

  @override
  OQRoundStructure rebuild(void Function(OQRoundStructureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OQRoundStructureBuilder toBuilder() =>
      new OQRoundStructureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OQRoundStructure &&
        name == other.name &&
        themes == other.themes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, themes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OQRoundStructure')
          ..add('name', name)
          ..add('themes', themes))
        .toString();
  }
}

class OQRoundStructureBuilder
    implements Builder<OQRoundStructure, OQRoundStructureBuilder> {
  _$OQRoundStructure? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<OQThemeStructure>? _themes;
  ListBuilder<OQThemeStructure> get themes =>
      _$this._themes ??= new ListBuilder<OQThemeStructure>();
  set themes(ListBuilder<OQThemeStructure>? themes) => _$this._themes = themes;

  OQRoundStructureBuilder() {
    OQRoundStructure._defaults(this);
  }

  OQRoundStructureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _themes = $v.themes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OQRoundStructure other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OQRoundStructure;
  }

  @override
  void update(void Function(OQRoundStructureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OQRoundStructure build() => _build();

  _$OQRoundStructure _build() {
    _$OQRoundStructure _$result;
    try {
      _$result =
          _$v ?? new _$OQRoundStructure._(name: name, themes: _themes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'themes';
        _themes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OQRoundStructure', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
