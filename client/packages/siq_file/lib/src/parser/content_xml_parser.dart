import 'package:archive/archive_io.dart';
import 'package:collection/collection.dart';
import 'package:crypto/crypto.dart';
import 'package:openapi/openapi.dart';
import 'package:siq_file/src/extensions.dart';
import 'package:xml/xml.dart';

import '../converters/time_converter.dart';

class ContentXmlParser {
  ContentXmlParser(String rawFile, Archive? archive) {
    _archive = archive;
    final document = XmlDocument.parse(rawFile);
    final package = document.getElement('package')!;
    final metadata = _parseMetadata(package);
    final roundsXml = package.getElement('rounds')!;
    final rounds = roundsXml.children.map(_parseRound).toList();

    _siqFile = OQContentStructure(metadata: metadata, rounds: rounds);
  }

  OQRoundStructure _parseRound(XmlNode round) {
    final name = round.getAttribute('name') ?? '-';
    final themes =
        round.children.map((e) => _parseTheme(e.getElement('theme')!)).toList();
    return OQRoundStructure(name: name, themes: themes);
  }

  OQThemeStructure _parseTheme(XmlElement theme) {
    final name = theme.getAttribute('name') ?? '-';
    final comment = _getComment(theme);
    final questions =
        theme.getElement('questions')?.children.map(_parseQuestion).toList() ??
        [];
    return OQThemeStructure(name: name, comment: comment, questions: questions);
  }

  String? _getComment(XmlElement element) {
    final comment =
        element.getElement('info')?.getElement('comments')?.innerText;
    return comment;
  }

  OQQuestionsStructure _parseQuestion(XmlNode question) {
    final price = int.tryParse(question.getAttribute('price') ?? '') ?? -1;
    final params = question.getElement('params');

    final questionType =
        OQQuestionsStructureType.values.firstWhereOrNull(
          (e) => e.name == question.getAttribute('type'),
        ) ??
        OQQuestionsStructureType.regular;

    final questionParam = params?.children.firstWhereOrNull(
      (p0) => p0.getAttribute('name') == 'question',
    );
    final questionItem = questionParam?.getElement('item');
    final questionItemType = _getFileType(questionItem);
    final text = questionItemType != null ? null : questionItem?.innerText;
    final questionFile = parseFile(questionItem);

    final answerParam = params?.children.firstWhereOrNull(
      (p0) => p0.getAttribute('name') == 'answer',
    );
    final answerItem = answerParam?.getElement('item');
    final answerFile = parseFile(answerItem);
    final answerItemType = _getFileType(answerItem);

    Set<String> getAnswers(String key) =>
        question.getElement(key)?.children.map((e) => e.innerText).toSet() ??
        {};

    final right = getAnswers('right');
    final hostHint = right.join(' / ');
    final answerText = answerItemType != null ? null : answerItem?.innerText;

    return OQQuestionsStructure(
      price: price,
      text: text,
      type: questionType,
      questionFile: questionFile,
      answerFile: answerFile,
      hostHint: hostHint,
      answerText: answerText,
      playersHint: null,
    );
  }

  OQFile? parseFile(XmlElement? item) {
    final itemType = _getFileType(item);
    final folder = switch (itemType) {
      OQFileContentStructureType.image => 'Images',
      OQFileContentStructureType.video => 'Video',
      OQFileContentStructureType.audio => 'Audio',
      OQFileContentStructureType.$unknown => null,
      null => null,
    };
    final filePath = [folder, item?.innerText].join('/');
    final rawFile =
        _archive?.files
            .firstWhereOrNull((e) => e.name == filePath)
            ?.readBytes();
    final hash = rawFile == null ? '' : getFileMD5(rawFile).toString();
    final file =
        itemType == null
            ? null
            : OQFile(file: OQFileContentStructure(md5: hash, type: itemType));

    return file;
  }

  String getFileMD5(List<int> data) {
    return md5.convert(data).toString();
  }

  OQFileContentStructureType? _getFileType(XmlElement? item) {
    final itemType = OQFileContentStructureType.values.firstWhereOrNull(
      (e) => e.name == item?.getAttribute('type'),
    );
    return itemType;
  }

  OQMetadataStructure _parseMetadata(XmlElement package) {
    final packageAtributes = package.attributes.map(
      (e) => MapEntry(e.localName, e.value),
    );
    final Map<String, dynamic> json = Map.fromEntries(packageAtributes);

    final tagsElement = package.getElement('tags');
    final tags =
        tagsElement?.children.map((e) => e.innerText.trim()).toSet() ?? {};

    final infoElement = package.getElement('info')?.getElement('authors');
    final authors =
        infoElement?.children.map((e) => e.innerText.trim()).toSet() ?? {};
    final comment = _getComment(package);

    json.addAll({
      'tags': tags.toList(),
      'authors': authors.toList(),
      'comment': comment,
      'id': '',
      'createdAt': DateTime.now().toIso8601String(),
      'ageRestriction': 'NONE',
      'author': -1,
      'language': 'en',
    });

    json.remove('logo');

    // Convert objects
    _convertObjects(json);

    final metadata = OQMetadataStructure.fromJson(json);
    return metadata;
  }

  void _convertObjects(Map<String, dynamic> json) {
    json['date'] = _nullPass(
      json['date'],
      (value) => DateTimeConverter().fromJson(value).toIso8601String(),
    );
    json.renameKey('name', 'title');
  }

  dynamic _nullPass(dynamic value, dynamic Function(dynamic value) converter) {
    if (value == null) return null;
    return converter(value);
  }

  OQContentStructure? _siqFile;
  Archive? _archive;
  OQContentStructure get siqFile => _siqFile!;
}
