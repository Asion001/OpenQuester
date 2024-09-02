import 'dart:convert';
import 'dart:typed_data';

import 'package:archive/archive_io.dart';

import '../siq_file/siq_file.dart';
import 'content_xml_parser.dart';

class SiqArchiveParser {
  SiqArchiveParser(this._file);

  final FileStream _file;
  SiqFile? _siqFile;
  SiqFile get file => _siqFile!;

  Future<SiqFile> parse() async {
    final targetStream = await InputFileStream.asRamFile(
      _file.stream.map(Uint8List.fromList),
      _file.fileLength,
    );
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

class FileStream {
  const FileStream({
    required this.fileLength,
    required this.stream,
  });
  final int fileLength;
  final Stream<List<int>> stream;
}
