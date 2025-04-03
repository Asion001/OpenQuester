import 'dart:convert';

import 'package:archive/archive_io.dart';
import 'package:collection/collection.dart';
import 'package:openapi/openapi.dart';
import 'package:siq_file/src/parser/content_xml_parser.dart';

class SiqArchiveParser {
  SiqArchiveParser();

  PackageCreateInputData? _siqFile;
  PackageCreateInputData get file => _siqFile!;

  Archive? archive;
  InputFileStream? targetStream;
  Map<String, ArchiveFile> filesHash = {};

  Future<void> dispose() async {
    await targetStream?.close();
    for (final e in filesHash.values) {
      e.closeSync();
    }
    filesHash.clear();
    _siqFile = null;
    await archive?.clear();
  }

  Future<PackageCreateInputData> parse() async {
    await _getContentFile(archive!);
    return _siqFile!;
  }

  Future<void> load(List<int> bytes, {bool verify = false}) async {
    final decoder = ZipDecoder();
    archive = decoder.decodeBytes(bytes, verify: verify);
  }

  Future<void> _getContentFile(Archive archive) async {
    final contentFile = archive.firstWhereOrNull((file) {
      return file.isFile && file.name == 'content.xml';
    });

    if (contentFile == null) throw Exception('No content.xml file!');
    await _parseContentFile(contentFile, archive);
  }

  Future<void> _parseContentFile(ArchiveFile file, Archive archive) async {
    final contentFile = utf8.decode(file.content);
    file.clear();

    final contentXml = ContentXmlParser(archive);
    await contentXml.parse(contentFile);
    _siqFile = contentXml.siqFile;
    filesHash = contentXml.filesMD5;
  }
}

class FileStream {
  const FileStream({required this.fileLength, required this.stream});
  final int fileLength;
  final Stream<List<int>> stream;
}
