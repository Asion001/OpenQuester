import 'dart:convert';
import 'dart:typed_data';

import 'package:archive/archive_io.dart';
import 'package:openapi/openapi.dart';

import 'content_xml_parser.dart';

class SiqArchiveParser {
  SiqArchiveParser(this._file);

  final FileStream _file;
  OQContentStructure? _siqFile;
  OQContentStructure get file => _siqFile!;

  Future<OQContentStructure> parse() async {
    final targetStream = await InputFileStream.asRamFile(
      _file.stream.map(Uint8List.fromList),
      _file.fileLength,
    );
    final archive = ZipDecoder().decodeStream(
      targetStream,
      verify: false, //TODO: add option to verify
    );

    _getContentFile(archive);

    targetStream.closeSync();

    return _siqFile!;
  }

  void _getContentFile(Archive archive) {
    for (var file in archive.files) {
      if (!file.isFile) continue;
      if (file.name == 'content.xml') {
        _parseContentFile(file, archive);
        break;
      }
    }
  }

  void _parseContentFile(ArchiveFile file, Archive archive) {
    final output =
        OutputFileStream.toRamFile(RamFileHandle.asWritableRamBuffer());
    file.writeContent(output);

    final contentFile = utf8.decode(output.getBytes());
    output.clear();

    final contentXml = ContentXmlParser(contentFile, archive);

    _siqFile = contentXml.siqFile;
  }
}

class FileStream {
  const FileStream({
    required this.fileLength,
    required this.stream,
  });
  final int fileLength;
  final Stream<List<int>> stream;
}
