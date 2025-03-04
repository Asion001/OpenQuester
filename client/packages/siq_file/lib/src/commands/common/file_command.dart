import 'package:args/command_runner.dart';
import 'package:openapi/openapi.dart';
import 'package:siq_file/src/parser/content_xml_parser.dart';
import 'package:siq_file/src/parser/siq_archive_parser.dart';
import 'package:universal_io/io.dart';

abstract class FileCommand extends Command<int> {
  Future<OQContentStructure> getFile({String? xmlFilePath}) async {
    if (xmlFilePath == null) {
      return _getFromArchive();
    }
    return _getFromXmlFile(xmlFilePath);
  }

  Future<OQContentStructure> _getFromXmlFile(String xmlFilePath) async {
    final xmlFile = File(xmlFilePath);
    final contentFile = xmlFile.readAsStringSync();
    final contentXmlParser = ContentXmlParser(null);
    await contentXmlParser.parse(contentFile);
    return contentXmlParser.siqFile;
  }

  Future<OQContentStructure> _getFromArchive() async {
    if (argResults!.rest.isEmpty) {
      usageException('Provide file path');
    }
    if (argResults!.rest.length > 1) {
      usageException('Too many arguments');
    }

    final target = argResults!.rest[0];
    final targetFile = File(target);
    final siqArchive = SiqArchiveParser();
    await siqArchive.load(await targetFile.readAsBytes());
    final siqFile = await siqArchive.parse();

    return siqFile;
  }
}
