// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oq_question_file.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OQQuestionFile extends OQQuestionFile {
  @override
  final OQFileContentStructure? file;
  @override
  final num? displayTime;
  @override
  final num? answerDelay;

  factory _$OQQuestionFile([void Function(OQQuestionFileBuilder)? updates]) =>
      (new OQQuestionFileBuilder()..update(updates))._build();

  _$OQQuestionFile._({this.file, this.displayTime, this.answerDelay})
      : super._();

  @override
  OQQuestionFile rebuild(void Function(OQQuestionFileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OQQuestionFileBuilder toBuilder() =>
      new OQQuestionFileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OQQuestionFile &&
        file == other.file &&
        displayTime == other.displayTime &&
        answerDelay == other.answerDelay;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, file.hashCode);
    _$hash = $jc(_$hash, displayTime.hashCode);
    _$hash = $jc(_$hash, answerDelay.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OQQuestionFile')
          ..add('file', file)
          ..add('displayTime', displayTime)
          ..add('answerDelay', answerDelay))
        .toString();
  }
}

class OQQuestionFileBuilder
    implements Builder<OQQuestionFile, OQQuestionFileBuilder> {
  _$OQQuestionFile? _$v;

  OQFileContentStructureBuilder? _file;
  OQFileContentStructureBuilder get file =>
      _$this._file ??= new OQFileContentStructureBuilder();
  set file(OQFileContentStructureBuilder? file) => _$this._file = file;

  num? _displayTime;
  num? get displayTime => _$this._displayTime;
  set displayTime(num? displayTime) => _$this._displayTime = displayTime;

  num? _answerDelay;
  num? get answerDelay => _$this._answerDelay;
  set answerDelay(num? answerDelay) => _$this._answerDelay = answerDelay;

  OQQuestionFileBuilder() {
    OQQuestionFile._defaults(this);
  }

  OQQuestionFileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _file = $v.file?.toBuilder();
      _displayTime = $v.displayTime;
      _answerDelay = $v.answerDelay;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OQQuestionFile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OQQuestionFile;
  }

  @override
  void update(void Function(OQQuestionFileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OQQuestionFile build() => _build();

  _$OQQuestionFile _build() {
    _$OQQuestionFile _$result;
    try {
      _$result = _$v ??
          new _$OQQuestionFile._(
              file: _file?.build(),
              displayTime: displayTime,
              answerDelay: answerDelay);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'file';
        _file?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OQQuestionFile', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
