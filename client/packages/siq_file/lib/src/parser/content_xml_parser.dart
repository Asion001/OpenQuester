import 'package:collection/collection.dart';
import 'package:siq_file/src/converters/file_converter.dart';
import 'package:siq_file/src/extensions.dart';
import 'package:siq_file/src/siq_file/siq_file_theme.dart';
import 'package:xml/xml.dart';

import '../converters/time_converter.dart';
import '../siq_file/file_object.dart';
import '../siq_file/siq_file.dart';
import '../siq_file/siq_file_file_object.dart';
import '../siq_file/siq_file_question.dart';

class ContentXmlParser {
  ContentXmlParser(String rawFile) {
    final document = XmlDocument.parse(rawFile);
    final package = document.getElement('package')!;
    final metadata = _parseMetadata(package);
    final roundsXml = package.getElement('rounds')!;
    final rounds = roundsXml.children.map(_parseRound).toList();

    _siqFile = SiqFile(metadata: metadata, rounds: rounds);
  }

  SiqFileRound _parseRound(XmlNode round) {
    final name = round.getAttribute('name') ?? '-';
    final themes =
        round.children.map((e) => _parseTheme(e.getElement('theme')!)).toList();
    return SiqFileRound(name: name, themes: themes);
  }

  SiqFileTheme _parseTheme(XmlElement theme) {
    final name = theme.getAttribute('name') ?? '-';
    final comment = _getComment(theme);
    final questions =
        theme.getElement('questions')?.children.map(_parseQuestion).toList() ??
            [];
    return SiqFileTheme(
      name: name,
      comment: comment,
      questions: questions,
    );
  }

  String? _getComment(XmlElement element) {
    final comment =
        element.getElement('info')?.getElement('comments')?.innerText;
    return comment;
  }

  SiqFileQuestion _parseQuestion(XmlNode question) {
    final price = int.tryParse(question.getAttribute('price') ?? '') ?? -1;
    final params = question.getElement('params');

    final questionType = QuestionType.values
            .firstWhereOrNull((e) => e.name == question.getAttribute('type')) ??
        QuestionType.regular;

    final questionParam = params?.children
        .firstWhere((p0) => p0.getAttribute('name') == 'question');
    final questionItem = questionParam?.getElement('item');
    final questionItemType = _getFileType(questionItem);
    final text = questionItemType != null ? null : questionItem?.innerText;
    final questionFile = parseFile(questionItem);

    final answerParam = params?.children
        .firstWhere((p0) => p0.getAttribute('name') == 'answer');
    final answerItem = answerParam?.getElement('item');
    final answerFile = parseFile(answerItem);
    final answerItemType = _getFileType(answerItem);

    Set<String> getAnswers(String key) =>
        question.getElement(key)?.children.map((e) => e.innerText).toSet() ??
        {};

    final right = getAnswers('right');
    final hostHint = right.join(' / ');
    final answerText = answerItemType != null ? null : answerItem?.innerText;

    return SiqFileQuestion(
      price: price,
      text: text,
      type: questionType,
      questionFile: questionFile,
      answerFile: answerFile,
      hostHint: hostHint,
      answerText: answerText,
    );
  }

  SiqFileFileObject? parseFile(XmlElement? item) {
    final itemType = _getFileType(item);

    final file = itemType == null
        ? null
        : SiqFileFileObject(
            file: FileObject(path: item!.innerText, type: itemType));

    return file;
  }

  FileType? _getFileType(XmlElement? item) {
    final itemType = FileType.values
        .firstWhereOrNull((e) => e.name == item?.getAttribute('type'));
    return itemType;
  }

  SiqFileMetadata _parseMetadata(XmlElement package) {
    final packageAtributes =
        package.attributes.map((e) => MapEntry(e.localName, e.value));
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
    });

    // Convert objects
    _convertObjects(json);

    final metadata = SiqFileMetadata.fromJson(json);
    return metadata;
  }

  void _convertObjects(Map<String, dynamic> json) {
    json['logo'] = ImageFileConverter().fromJson(json['logo']).toJson();
    json['date'] = DateTimeConverter().fromJson(json['date']).toIso8601String();
    json.renameKey('name', 'title');
  }

  SiqFile? _siqFile;
  SiqFile get siqFile => _siqFile!;
}
