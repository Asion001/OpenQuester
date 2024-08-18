import 'dart:convert';

import 'package:archive/archive_io.dart';
import 'package:mason_logger/mason_logger.dart';
import 'package:universal_io/io.dart';

import '../siq_file/siq_file.dart';
import 'content_xml_parser.dart';

class SiqArchiveParser {
  SiqArchiveParser(this._file, {Logger? logger});

  final File _file;

  SiqFile? _siqFile;
  SiqFile get file => _siqFile!;

  Future<SiqFile> parse() async {
    if (!_file.existsSync()) {
      throw Exception('File does not exist');
    }
    final targetStream = InputFileStream(_file.path);
    final archive = ZipDecoder().decodeBuffer(targetStream);

    for (var file in archive.files) {
      if (!file.isFile) continue;
      if (file.name == 'content.xml') {
        _parseContentFile(file);
        break;
      }
    }

    targetStream.closeSync();

    return _siqFile!;
  }

  void _parseContentFile(ArchiveFile file) {
    final output = OutputStream();
    file.writeContent(output);

    final contentFile = utf8.decode(output.getBytes());
    output.clear();

    final contentXml = ContentXmlParser(contentFile);
    _siqFile = contentXml.siqFile;
  }
}
