// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oq_answer_file.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OQAnswerFile extends OQAnswerFile {
  @override
  final OQFileContentStructure? file;
  @override
  final num? displayTime;

  factory _$OQAnswerFile([void Function(OQAnswerFileBuilder)? updates]) =>
      (new OQAnswerFileBuilder()..update(updates))._build();

  _$OQAnswerFile._({this.file, this.displayTime}) : super._();

  @override
  OQAnswerFile rebuild(void Function(OQAnswerFileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OQAnswerFileBuilder toBuilder() => new OQAnswerFileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OQAnswerFile &&
        file == other.file &&
        displayTime == other.displayTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, file.hashCode);
    _$hash = $jc(_$hash, displayTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OQAnswerFile')
          ..add('file', file)
          ..add('displayTime', displayTime))
        .toString();
  }
}

class OQAnswerFileBuilder
    implements Builder<OQAnswerFile, OQAnswerFileBuilder> {
  _$OQAnswerFile? _$v;

  OQFileContentStructureBuilder? _file;
  OQFileContentStructureBuilder get file =>
      _$this._file ??= new OQFileContentStructureBuilder();
  set file(OQFileContentStructureBuilder? file) => _$this._file = file;

  num? _displayTime;
  num? get displayTime => _$this._displayTime;
  set displayTime(num? displayTime) => _$this._displayTime = displayTime;

  OQAnswerFileBuilder() {
    OQAnswerFile._defaults(this);
  }

  OQAnswerFileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _file = $v.file?.toBuilder();
      _displayTime = $v.displayTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OQAnswerFile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OQAnswerFile;
  }

  @override
  void update(void Function(OQAnswerFileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OQAnswerFile build() => _build();

  _$OQAnswerFile _build() {
    _$OQAnswerFile _$result;
    try {
      _$result = _$v ??
          new _$OQAnswerFile._(file: _file?.build(), displayTime: displayTime);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'file';
        _file?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OQAnswerFile', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
