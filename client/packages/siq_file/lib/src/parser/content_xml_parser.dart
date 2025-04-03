import 'package:archive/archive_io.dart';
import 'package:collection/collection.dart';
import 'package:crypto/crypto.dart';
import 'package:openapi/openapi.dart';
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

    siqFile = metadata.copyWith(
      rounds: await Future.wait(rounds),
    );
  }

  Future<PackageRound> _parseRound(XmlNode round) async {
    final name = round.getAttribute('name') ?? '-';
    final description = round.getAttribute('description');
    final themesXml = round.getElement('themes');
    final themes = themesXml?.childElements.map(_parseTheme).toList();
    return PackageRound(
      id: null,
      name: name,
      themes: await Future.wait(themes ?? []),
      description: description,
    );
  }

  Future<PackageTheme> _parseTheme(XmlElement theme) async {
    final name = theme.getAttribute('name') ?? '-';
    final comment = await _getComment(theme);
    final questions =
        theme.getElement('questions')?.children.map(_parseQuestion).toList() ??
            [];
    return PackageTheme(
      name: name,
      description: comment,
      questions: await Future.wait(questions),
      id: null,
    );
  }

  Future<String?> _getComment(XmlElement element) async {
    final comment =
        element.getElement('info')?.getElement('comments')?.innerText;
    return comment;
  }

  Future<PackageQuestionUnion> _parseQuestion(XmlNode question) async {
    final price = int.tryParse(question.getAttribute('price') ?? '') ?? -1;
    final params =
        question.getElement('params') ?? question.getElement('scenario');
    final isScenario = params?.localName == 'scenario';

    final questionType = QuestionType.values.firstWhereOrNull(
          (e) => e.name == question.getAttribute('type'),
        ) ??
        QuestionType.simple;

    final questionParam = isScenario
        ? params
        : params?.children.firstWhereOrNull(
            (p0) {
              final nameAtr =
                  (p0 is XmlElement) ? p0.localName : p0.getAttribute('name');
              return ['question'].contains(nameAtr);
            },
          );
    final questionItems = _getFileItems(questionParam);
    final questionFiles =
        (await Future.wait(questionItems.map(parseFile))).nonNulls;
    final questionComment = questionItems
        .firstWhereOrNull((e) => e.getAttribute('type') == 'say')
        ?.value;

    final answerParam = params?.children.firstWhereOrNull(
      (p0) => p0.getAttribute('name') == 'answer',
    );
    final answerItems = _getFileItems(answerParam);
    final answerFiles =
        (await Future.wait(answerItems.map(parseFile))).nonNulls;

    Set<String> getAnswers(String key) =>
        question.getElement(key)?.children.map((e) => e.innerText).toSet() ??
        {};

    final rightAnswers = getAnswers('right');
    final answerText = rightAnswers.join(' / ');
    final wrongAnswers = getAnswers('wrong').join(' / ');
    final hostHint =
        wrongAnswers.isEmpty ? null : 'Wrong answers: $wrongAnswers';

    final packageQuestionFiles = questionFiles
        .map((e) => PackageQuestionFile(id: null, file: e))
        .toList();
    final packageAnswerFiles =
        answerFiles.map((e) => PackageAnswerFile(id: null, file: e)).toList();

    return switch (questionType) {
      QuestionType.simple => PackageQuestionUnion.simple(
          price: price,
          text: answerText,
          type: SimpleQuestionType.simple,
          questionComment: questionComment,
          questionFiles: packageQuestionFiles,
          answerText: answerText,
          answerHint: hostHint,
          answerFiles: packageAnswerFiles,
          id: null,
        ),
      QuestionType.stake => PackageQuestionUnion.stake(
          price: price,
          text: answerText,
          type: StakeQuestionType.stake,
          questionComment: questionComment,
          questionFiles: packageQuestionFiles,
          answerText: answerText,
          answerHint: hostHint,
          answerFiles: packageAnswerFiles,
          id: null,
          maxPrice: null,
        ),
      QuestionType.secret => PackageQuestionUnion.secret(
          price: price,
          text: answerText,
          type: SecretQuestionType.secret,
          questionComment: questionComment,
          questionFiles: packageQuestionFiles,
          answerText: answerText,
          answerHint: hostHint,
          answerFiles: packageAnswerFiles,
          id: null,
          subType: SecretQuestionSubType.simple,
          allowedPrices: null,
          transferType: PackageQuestionTransferType.any,
        ),
      QuestionType.noRisk => PackageQuestionUnion.noRisk(
          price: price,
          text: answerText,
          type: NoRiskQuestionType.noRisk,
          questionComment: questionComment,
          questionFiles: packageQuestionFiles,
          answerText: answerText,
          answerHint: hostHint,
          answerFiles: packageAnswerFiles,
          id: null,
          subType: NoRiskQuestionSubType.simple,
        ),
      QuestionType.hidden => PackageQuestionUnion.hidden(
          price: price,
          text: answerText,
          type: HiddenQuestionType.hidden,
          questionComment: questionComment,
          questionFiles: packageQuestionFiles,
          answerText: answerText,
          answerHint: hostHint,
          answerFiles: packageAnswerFiles,
          isHidden: true,
          id: null,
        ),
      QuestionType.choice => PackageQuestionUnion.choice(
          price: price,
          text: answerText,
          type: ChoiceQuestionType.choice,
          questionComment: questionComment,
          questionFiles: packageQuestionFiles,
          answerText: answerText,
          answerHint: hostHint,
          answerFiles: packageAnswerFiles,
          showDelay: 3000,
          answers: rightAnswers.map((e) => Answers(id: null, text: e)).toList(),
          id: null,
          subType: null,
        ),
      QuestionType.$unknown => throw Exception('QuestionType.unknown'),
    };
  }

  List<XmlElement> _getFileItems(XmlNode? node) {
    return node?.childElements.where((e) {
          final attribute = e.getAttribute('type');
          return attribute != null;
        }).toList() ??
        [];
  }

  Future<FileItem?> parseFile(XmlElement? item) async {
    final itemType = _getFileType(item);
    final folder = switch (itemType) {
      PackageFileType.image => 'Images',
      PackageFileType.video => 'Video',
      PackageFileType.audio => 'Audio',
      PackageFileType.$unknown => null,
      null => null,
    };
    if (folder == null || item == null) {
      return null;
    }

    final filePath = [folder, item.innerText.replaceFirst('@', '')].join('/');
    final archiveFile = _archive?.files.firstWhereOrNull(
      (e) => Uri.decodeFull(e.name) == filePath,
    );
    final rawFile = archiveFile?.content;
    archiveFile?.clear();
    if (rawFile == null) {
      throw Exception('$filePath not found in archive! (Question $item)');
    }

    final md5 = await getFileMD5(rawFile);

    // Save archive file to map for re-use
    filesMD5[md5] = archiveFile!;

    final file = itemType == null
        ? null
        : FileItem(
            id: null,
            link: null,
            md5: md5,
            type: itemType,
          );

    return file;
  }

  Future<String> getFileMD5(List<int> data) async =>
      md5.convert(data).toString();

  PackageFileType? _getFileType(XmlElement? item) {
    final type = item?.getAttribute('type');
    if (type == 'voice') return PackageFileType.audio;
    final itemType = PackageFileType.values.firstWhereOrNull(
      (e) => e.name == type,
    );
    return itemType;
  }

  Future<PackageCreateInputData> _parseMetadata(XmlElement package) async {
    final json = Map<String, dynamic>.fromEntries(
      package.attributes.map(
        (e) => MapEntry(e.localName, e.value),
      ),
    );

    final metadata = PackageCreateInputData(
      title: json['name']?.toString() ?? '',
      description: json['description']?.toString(),
      language: json['language']?.toString(),
      ageRestriction: AgeRestriction.none,
      rounds: [],
      tags: [],
    );
    return metadata;
  }

  late PackageCreateInputData siqFile;
  Archive? _archive;
  Map<String, ArchiveFile> filesMD5 = {};
}
