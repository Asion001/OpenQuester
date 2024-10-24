// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oq_questions_structure.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OQQuestionsStructure extends OQQuestionsStructure {
  @override
  final num? price;
  @override
  final String? type;
  @override
  final String? text;
  @override
  final String? hostHint;
  @override
  final String? playersHint;
  @override
  final String? answerText;
  @override
  final OQQuestionFile? questionFile;
  @override
  final OQAnswerFile? answerFile;

  factory _$OQQuestionsStructure(
          [void Function(OQQuestionsStructureBuilder)? updates]) =>
      (new OQQuestionsStructureBuilder()..update(updates))._build();

  _$OQQuestionsStructure._(
      {this.price,
      this.type,
      this.text,
      this.hostHint,
      this.playersHint,
      this.answerText,
      this.questionFile,
      this.answerFile})
      : super._();

  @override
  OQQuestionsStructure rebuild(
          void Function(OQQuestionsStructureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OQQuestionsStructureBuilder toBuilder() =>
      new OQQuestionsStructureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OQQuestionsStructure &&
        price == other.price &&
        type == other.type &&
        text == other.text &&
        hostHint == other.hostHint &&
        playersHint == other.playersHint &&
        answerText == other.answerText &&
        questionFile == other.questionFile &&
        answerFile == other.answerFile;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jc(_$hash, hostHint.hashCode);
    _$hash = $jc(_$hash, playersHint.hashCode);
    _$hash = $jc(_$hash, answerText.hashCode);
    _$hash = $jc(_$hash, questionFile.hashCode);
    _$hash = $jc(_$hash, answerFile.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OQQuestionsStructure')
          ..add('price', price)
          ..add('type', type)
          ..add('text', text)
          ..add('hostHint', hostHint)
          ..add('playersHint', playersHint)
          ..add('answerText', answerText)
          ..add('questionFile', questionFile)
          ..add('answerFile', answerFile))
        .toString();
  }
}

class OQQuestionsStructureBuilder
    implements Builder<OQQuestionsStructure, OQQuestionsStructureBuilder> {
  _$OQQuestionsStructure? _$v;

  num? _price;
  num? get price => _$this._price;
  set price(num? price) => _$this._price = price;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _hostHint;
  String? get hostHint => _$this._hostHint;
  set hostHint(String? hostHint) => _$this._hostHint = hostHint;

  String? _playersHint;
  String? get playersHint => _$this._playersHint;
  set playersHint(String? playersHint) => _$this._playersHint = playersHint;

  String? _answerText;
  String? get answerText => _$this._answerText;
  set answerText(String? answerText) => _$this._answerText = answerText;

  OQQuestionFileBuilder? _questionFile;
  OQQuestionFileBuilder get questionFile =>
      _$this._questionFile ??= new OQQuestionFileBuilder();
  set questionFile(OQQuestionFileBuilder? questionFile) =>
      _$this._questionFile = questionFile;

  OQAnswerFileBuilder? _answerFile;
  OQAnswerFileBuilder get answerFile =>
      _$this._answerFile ??= new OQAnswerFileBuilder();
  set answerFile(OQAnswerFileBuilder? answerFile) =>
      _$this._answerFile = answerFile;

  OQQuestionsStructureBuilder() {
    OQQuestionsStructure._defaults(this);
  }

  OQQuestionsStructureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _price = $v.price;
      _type = $v.type;
      _text = $v.text;
      _hostHint = $v.hostHint;
      _playersHint = $v.playersHint;
      _answerText = $v.answerText;
      _questionFile = $v.questionFile?.toBuilder();
      _answerFile = $v.answerFile?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OQQuestionsStructure other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OQQuestionsStructure;
  }

  @override
  void update(void Function(OQQuestionsStructureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OQQuestionsStructure build() => _build();

  _$OQQuestionsStructure _build() {
    _$OQQuestionsStructure _$result;
    try {
      _$result = _$v ??
          new _$OQQuestionsStructure._(
              price: price,
              type: type,
              text: text,
              hostHint: hostHint,
              playersHint: playersHint,
              answerText: answerText,
              questionFile: _questionFile?.build(),
              answerFile: _answerFile?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'questionFile';
        _questionFile?.build();
        _$failedField = 'answerFile';
        _answerFile?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OQQuestionsStructure', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
