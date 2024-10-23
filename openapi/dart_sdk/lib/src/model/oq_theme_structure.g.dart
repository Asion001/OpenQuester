// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oq_theme_structure.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OQThemeStructure extends OQThemeStructure {
  @override
  final String? name;
  @override
  final String? comment;
  @override
  final BuiltList<OQQuestionsStructure>? questions;

  factory _$OQThemeStructure(
          [void Function(OQThemeStructureBuilder)? updates]) =>
      (new OQThemeStructureBuilder()..update(updates))._build();

  _$OQThemeStructure._({this.name, this.comment, this.questions}) : super._();

  @override
  OQThemeStructure rebuild(void Function(OQThemeStructureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OQThemeStructureBuilder toBuilder() =>
      new OQThemeStructureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OQThemeStructure &&
        name == other.name &&
        comment == other.comment &&
        questions == other.questions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, questions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OQThemeStructure')
          ..add('name', name)
          ..add('comment', comment)
          ..add('questions', questions))
        .toString();
  }
}

class OQThemeStructureBuilder
    implements Builder<OQThemeStructure, OQThemeStructureBuilder> {
  _$OQThemeStructure? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  ListBuilder<OQQuestionsStructure>? _questions;
  ListBuilder<OQQuestionsStructure> get questions =>
      _$this._questions ??= new ListBuilder<OQQuestionsStructure>();
  set questions(ListBuilder<OQQuestionsStructure>? questions) =>
      _$this._questions = questions;

  OQThemeStructureBuilder() {
    OQThemeStructure._defaults(this);
  }

  OQThemeStructureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _comment = $v.comment;
      _questions = $v.questions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OQThemeStructure other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OQThemeStructure;
  }

  @override
  void update(void Function(OQThemeStructureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OQThemeStructure build() => _build();

  _$OQThemeStructure _build() {
    _$OQThemeStructure _$result;
    try {
      _$result = _$v ??
          new _$OQThemeStructure._(
              name: name, comment: comment, questions: _questions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'questions';
        _questions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OQThemeStructure', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
