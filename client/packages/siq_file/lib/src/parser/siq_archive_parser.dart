import 'dart:convert';

import 'package:archive/archive_io.dart';
import 'package:openapi/openapi.dart';

import 'package:siq_file/src/parser/content_xml_parser.dart';

class SiqArchiveParser {
  SiqArchiveParser(this.bytes);

  final List<int> bytes;
  OQContentStructure? _siqFile;
  OQContentStructure get file => _siqFile!;

  Archive? archive;
  InputFileStream? targetStream;
  Map<String, ArchiveFile> filesHash = {};

  Future<void> dispose() async {
    await targetStream?.close();
    filesHash.clear();
    bytes.clear();
    _siqFile = null;
  }

  Future<OQContentStructure> parse() async {
    if (archive == null) await load();
    await _getContentFile(archive!);
    return _siqFile!;
  }

  Future<void> load({bool verify = false}) async {
    archive = ZipDecoder().decodeBytes(bytes, verify: verify);
  }

  Future<void> _getContentFile(Archive archive) async {
    for (final file in archive.files) {
      if (!file.isFile) continue;
      if (file.name == 'content.xml') {
        await _parseContentFile(file, archive);
        break;
      }
    }
  }

  Future<void> _parseContentFile(ArchiveFile file, Archive archive) async {
    final output = OutputFileStream.toRamFile(
      RamFileHandle.asWritableRamBuffer(),
    );
    file.writeContent(output);

    final contentFile = utf8.decode(output.getBytes());
    await output.clear();

    final contentXml = ContentXmlParser(archive);
    await contentXml.parse(contentFile);
    _siqFile = contentXml.siqFile;
    filesHash = contentXml.filesHash;
  }
}

class FileStream {
  const FileStream({required this.fileLength, required this.stream});
  final int fileLength;
  final Stream<List<int>> stream;
}
