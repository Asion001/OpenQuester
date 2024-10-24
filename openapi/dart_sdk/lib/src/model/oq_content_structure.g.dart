// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oq_content_structure.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OQContentStructure extends OQContentStructure {
  @override
  final OQMetadataStructure? metadata;
  @override
  final BuiltList<OQRoundStructure>? rounds;

  factory _$OQContentStructure(
          [void Function(OQContentStructureBuilder)? updates]) =>
      (new OQContentStructureBuilder()..update(updates))._build();

  _$OQContentStructure._({this.metadata, this.rounds}) : super._();

  @override
  OQContentStructure rebuild(
          void Function(OQContentStructureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OQContentStructureBuilder toBuilder() =>
      new OQContentStructureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OQContentStructure &&
        metadata == other.metadata &&
        rounds == other.rounds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, rounds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OQContentStructure')
          ..add('metadata', metadata)
          ..add('rounds', rounds))
        .toString();
  }
}

class OQContentStructureBuilder
    implements Builder<OQContentStructure, OQContentStructureBuilder> {
  _$OQContentStructure? _$v;

  OQMetadataStructureBuilder? _metadata;
  OQMetadataStructureBuilder get metadata =>
      _$this._metadata ??= new OQMetadataStructureBuilder();
  set metadata(OQMetadataStructureBuilder? metadata) =>
      _$this._metadata = metadata;

  ListBuilder<OQRoundStructure>? _rounds;
  ListBuilder<OQRoundStructure> get rounds =>
      _$this._rounds ??= new ListBuilder<OQRoundStructure>();
  set rounds(ListBuilder<OQRoundStructure>? rounds) => _$this._rounds = rounds;

  OQContentStructureBuilder() {
    OQContentStructure._defaults(this);
  }

  OQContentStructureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _metadata = $v.metadata?.toBuilder();
      _rounds = $v.rounds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OQContentStructure other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OQContentStructure;
  }

  @override
  void update(void Function(OQContentStructureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OQContentStructure build() => _build();

  _$OQContentStructure _build() {
    _$OQContentStructure _$result;
    try {
      _$result = _$v ??
          new _$OQContentStructure._(
              metadata: _metadata?.build(), rounds: _rounds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
        _$failedField = 'rounds';
        _rounds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OQContentStructure', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
