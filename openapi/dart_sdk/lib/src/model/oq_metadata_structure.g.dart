// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oq_metadata_structure.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OQMetadataStructure extends OQMetadataStructure {
  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? date;
  @override
  final String? publisher;
  @override
  final OQLogoFile? logo;
  @override
  final BuiltList<String>? tags;
  @override
  final BuiltList<String>? authors;
  @override
  final String? language;
  @override
  final String? restriction;
  @override
  final String? comment;

  factory _$OQMetadataStructure(
          [void Function(OQMetadataStructureBuilder)? updates]) =>
      (new OQMetadataStructureBuilder()..update(updates))._build();

  _$OQMetadataStructure._(
      {this.id,
      this.title,
      this.date,
      this.publisher,
      this.logo,
      this.tags,
      this.authors,
      this.language,
      this.restriction,
      this.comment})
      : super._();

  @override
  OQMetadataStructure rebuild(
          void Function(OQMetadataStructureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OQMetadataStructureBuilder toBuilder() =>
      new OQMetadataStructureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OQMetadataStructure &&
        id == other.id &&
        title == other.title &&
        date == other.date &&
        publisher == other.publisher &&
        logo == other.logo &&
        tags == other.tags &&
        authors == other.authors &&
        language == other.language &&
        restriction == other.restriction &&
        comment == other.comment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, publisher.hashCode);
    _$hash = $jc(_$hash, logo.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, authors.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, restriction.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OQMetadataStructure')
          ..add('id', id)
          ..add('title', title)
          ..add('date', date)
          ..add('publisher', publisher)
          ..add('logo', logo)
          ..add('tags', tags)
          ..add('authors', authors)
          ..add('language', language)
          ..add('restriction', restriction)
          ..add('comment', comment))
        .toString();
  }
}

class OQMetadataStructureBuilder
    implements Builder<OQMetadataStructure, OQMetadataStructureBuilder> {
  _$OQMetadataStructure? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _publisher;
  String? get publisher => _$this._publisher;
  set publisher(String? publisher) => _$this._publisher = publisher;

  OQLogoFileBuilder? _logo;
  OQLogoFileBuilder get logo => _$this._logo ??= new OQLogoFileBuilder();
  set logo(OQLogoFileBuilder? logo) => _$this._logo = logo;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  ListBuilder<String>? _authors;
  ListBuilder<String> get authors =>
      _$this._authors ??= new ListBuilder<String>();
  set authors(ListBuilder<String>? authors) => _$this._authors = authors;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _restriction;
  String? get restriction => _$this._restriction;
  set restriction(String? restriction) => _$this._restriction = restriction;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  OQMetadataStructureBuilder() {
    OQMetadataStructure._defaults(this);
  }

  OQMetadataStructureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _date = $v.date;
      _publisher = $v.publisher;
      _logo = $v.logo?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _authors = $v.authors?.toBuilder();
      _language = $v.language;
      _restriction = $v.restriction;
      _comment = $v.comment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OQMetadataStructure other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OQMetadataStructure;
  }

  @override
  void update(void Function(OQMetadataStructureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OQMetadataStructure build() => _build();

  _$OQMetadataStructure _build() {
    _$OQMetadataStructure _$result;
    try {
      _$result = _$v ??
          new _$OQMetadataStructure._(
              id: id,
              title: title,
              date: date,
              publisher: publisher,
              logo: _logo?.build(),
              tags: _tags?.build(),
              authors: _authors?.build(),
              language: language,
              restriction: restriction,
              comment: comment);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'logo';
        _logo?.build();
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'authors';
        _authors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OQMetadataStructure', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
