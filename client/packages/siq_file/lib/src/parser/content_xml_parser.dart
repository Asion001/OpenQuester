import 'package:archive/archive_io.dart';
import 'package:collection/collection.dart';
import 'package:crypto/crypto.dart';
import 'package:openapi/openapi.dart';
import 'package:siq_file/src/converters/time_converter.dart';
import 'package:siq_file/src/extensions.dart';
import 'package:xml/xml.dart';

class ContentXmlParser {
  ContentXmlParser(Archive? archive) {
    _archive = archive;
  }

  Future<void> parse(String rawFile) async {
    final document = XmlDocument.parse(rawFile);
    final package = document.getElement('package')!;
    final metadata = await _parseMetadata(package);
    final roundsXml = package.getElement('rounds')!;
    final rounds = roundsXml.children.map(_parseRound).toList();

    siqFile = OQContentStructure(
      metadata: metadata,
      rounds: await Future.wait(rounds),
    );
  }

  Future<OQRoundStructure> _parseRound(XmlNode round) async {
    final name = round.getAttribute('name') ?? '-';
    final themesXml = round.getElement('themes');
    final themes = themesXml?.childElements.map(_parseTheme).toList();
    return OQRoundStructure(
      name: name,
      themes: await Future.wait(themes ?? []),
    );
  }

  Future<OQThemeStructure> _parseTheme(XmlElement theme) async {
    final name = theme.getAttribute('name') ?? '-';
    final comment = await _getComment(theme);
    final questions =
        theme.getElement('questions')?.children.map(_parseQuestion).toList() ??
            [];
    return OQThemeStructure(
      name: name,
      comment: comment,
      questions: await Future.wait(questions),
    );
  }

  Future<String?> _getComment(XmlElement element) async {
    final comment =
        element.getElement('info')?.getElement('comments')?.innerText;
    return comment;
  }

  Future<OQQuestionsStructure> _parseQuestion(XmlNode question) async {
    final price = int.tryParse(question.getAttribute('price') ?? '') ?? -1;
    final params =
        question.getElement('params') ?? question.getElement('scenario');
    final isScenario = params?.localName == 'scenario';

    final questionType = OQQuestionsStructureType.values.firstWhereOrNull(
          (e) => e.name == question.getAttribute('type'),
        ) ??
        OQQuestionsStructureType.regular;

    final questionParam = isScenario
        ? params
        : params?.children.firstWhereOrNull(
            (p0) {
              final nameAtr =
                  (p0 is XmlElement) ? p0.localName : p0.getAttribute('name');
              return ['question'].contains(nameAtr);
            },
          );
    final questionItem = _getFileItem(questionParam);
    final questionItemType = _getFileType(questionItem);
    final text = questionItemType != null ? null : questionItem?.innerText;
    final questionFile = await parseFile(questionItem);

    final answerParam = params?.children.firstWhereOrNull(
      (p0) => p0.getAttribute('name') == 'answer',
    );
    final answerItem = _getFileItem(answerParam);
    final answerFile = await parseFile(answerItem);
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
    );
  }

  XmlElement? _getFileItem(XmlNode? node) {
    return node?.childElements.firstWhereOrNull((e) {
      final attribute = e.getAttribute('type');
      return attribute != null;
    });
  }

  Future<OQFile?> parseFile(XmlElement? item) async {
    final itemType = _getFileType(item);
    final folder = switch (itemType) {
      OQFileContentStructureType.image => 'Images',
      OQFileContentStructureType.video => 'Video',
      OQFileContentStructureType.audio => 'Audio',
      OQFileContentStructureType.$unknown => null,
      null => null,
    };
    if (folder == null || item == null) {
      return null;
    }

    final filePath = [folder, item.innerText.replaceFirst('@', '')].join('/');
    final archiveFile = _archive?.files.firstWhereOrNull(
      (e) => Uri.decodeFull(e.name) == filePath,
    );

    final rawFile = archiveFile?.readBytes();
    await archiveFile?.close();
    if (rawFile == null) {
      throw Exception('$filePath not found in archive! (Question $item)');
    }

    final hash = await getFileMD5(rawFile);

    // Save archive file to map for re-use
    filesHash[hash] = archiveFile!;

    final file = itemType == null
        ? null
        : OQFile(file: OQFileContentStructure(md5: hash, type: itemType));

    return file;
  }

  Future<String> getFileMD5(List<int> data) async {
    return md5.convert(data).toString();
  }

  OQFileContentStructureType? _getFileType(XmlElement? item) {
    final itemType = OQFileContentStructureType.values.firstWhereOrNull(
      (e) => e.name == item?.getAttribute('type'),
    );
    return itemType;
  }

  Future<OQMetadataStructure> _parseMetadata(XmlElement package) async {
    final packageAtributes = package.attributes.map(
      (e) => MapEntry(e.localName, e.value),
    );
    final json = Map<String, dynamic>.fromEntries(packageAtributes);

    final tagsElement = package.getElement('tags');
    final tags =
        tagsElement?.children.map((e) => e.innerText.trim()).toSet() ?? {};

    final infoElement = package.getElement('info')?.getElement('authors');
    final authors =
        infoElement?.children.map((e) => e.innerText.trim()).toSet() ?? {};
    final comment = await _getComment(package);

    json
      ..addAll({
        'tags': tags.toList(),
        'authors': authors.toList(),
        'comment': comment,
        'id': '',
        'createdAt': DateTime.now().toIso8601String(),
        'ageRestriction': 'NONE',
        'author': -1,
        'language': 'en',
      })
      ..remove('logo');

    // Convert objects
    _convertObjects(json);

    final metadata = OQMetadataStructure.fromJson(json);
    return metadata;
  }

  void _convertObjects(Map<String, dynamic> json) {
    json['date'] = _nullPass(
      json['date'],
      (value) => const DateTimeConverter()
          .fromJson(value.toString())
          .toIso8601String(),
    );
    json.renameKey('name', 'title');
  }

  dynamic _nullPass(dynamic value, dynamic Function(dynamic value) converter) {
    if (value == null) return null;
    return converter(value);
  }

  late OQContentStructure siqFile;
  Archive? _archive;
  Map<String, ArchiveFile> filesHash = {};
}
