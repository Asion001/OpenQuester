import 'dart:convert';
import 'dart:typed_data';

import 'package:archive/archive_io.dart';
import 'package:collection/collection.dart';

import '../siq_file/siq_file.dart';
import 'content_xml_parser.dart';

class SiqArchiveParser {
  SiqArchiveParser(this._file);

  final FileStream _file;
  SiqFile? _siqFile;
  SiqFile get file => _siqFile!;

  Future<SiqFile> parse({bool hashFiles = false}) async {
    final targetStream = await InputFileStream.asRamFile(
      _file.stream.map(Uint8List.fromList),
      _file.fileLength,
    );
    final archive = ZipDecoder().decodeStream(
      targetStream,
      verify: false, //TODO: add option to verify
    );

    _getContentFile(archive);
    if (hashFiles) _hashFiles(archive);

    targetStream.closeSync();

    return _siqFile!;
  }

  void _getContentFile(Archive archive) {
    for (var file in archive.files) {
      if (!file.isFile) continue;
      if (file.name == 'content.xml') {
        _parseContentFile(file);
        break;
      }
    }
  }

  void _hashFiles(Archive archive) {
    if (_siqFile == null) return;
    _siqFile = _siqFile?.copyWithFiles((file) {
      if (file == null) return file;

      final archiveFile =
          archive.firstWhereOrNull((e) => e.name == file.file.fullPath);
      if (archiveFile == null) return file;

      //TODO: make this more memory efficient
      final content = archiveFile.content;
      final fileWithHash = file.file.copyWithHash(content);

      return file.copyWith(file: fileWithHash);
    });
  }

  void _parseContentFile(ArchiveFile file) {
    final output =
        OutputFileStream.toRamFile(RamFileHandle.asWritableRamBuffer());
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
