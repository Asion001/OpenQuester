import 'package:universal_io/io.dart';
import 'package:args/command_runner.dart';
import '../../parser/content_xml_parser.dart';
import '../../parser/siq_archive_parser.dart';
import '../../siq_file/siq_file.dart';

abstract class FileCommand extends Command<int> {
  Future<SiqFile> getFile({
    String? xmlFilePath,
    bool hashFiles = false,
  }) async {
    if (xmlFilePath == null) {
      return await _getFromArchive(hashFiles);
    }
    return _getFromXmlFile(xmlFilePath);
  }

  SiqFile _getFromXmlFile(String xmlFilePath) {
    final xmlFile = File(xmlFilePath);
    final contentFile = xmlFile.readAsStringSync();
    final contentXml = ContentXmlParser(contentFile);
    return contentXml.siqFile;
  }

  Future<SiqFile> _getFromArchive(bool hashFiles) async {
    if (argResults!.rest.isEmpty) {
      usageException('Provide file path');
    }
    if (argResults!.rest.length > 1) {
      usageException('Too many arguments');
    }

    final target = argResults!.rest[0];
    final targetFile = File(target);
    final targetStream = FileStream(
      stream: targetFile.openRead(),
      fileLength: await targetFile.length(),
    );
    final siqArchive = SiqArchiveParser(targetStream);
    final siqFile = await siqArchive.parse(hashFiles: hashFiles);

    return siqFile;
  }
}
