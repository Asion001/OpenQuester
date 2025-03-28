import 'dart:convert';
import 'dart:typed_data' show Uint8List;

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart' show ChangeNotifier;
import 'package:openquester/common_imports.dart' hide ParseSiqFileWorker;
import 'package:openquester/workers/upload_isolate.dart'
    deferred as upload_isolate show ParseSiqFileWorker;
import 'package:siq_file/siq_file.dart';

@singleton
class PackageUploadController extends ChangeNotifier {
  bool loading = false;

  Future<void> pickAndUpload() async {
    try {
      loading = true;
      notifyListeners();
      final fileResult = await FileService.pickFile();
      final file = fileResult?.files.firstOrNull;
      if (file == null) return;

      await upload(file);
    } catch (e, s) {
      logger.e(e, stackTrace: s);
      rethrow;
    } finally {
      loading = false;
      notifyListeners();
    }
  }

  Future<void> upload(PlatformFile file) async {
    final fileData = await file.xFile.readAsBytes();
    await _upload(fileData);
  }

  Future<void> _upload(Uint8List fileData) async {
    await upload_isolate.loadLibrary();
    final worker = upload_isolate.ParseSiqFileWorker();
    final parser = SiqArchiveParser();
    try {
      await worker.start();
      final rawBody = await worker.compute(fileData);

      final response = jsonDecode(rawBody) as Map<String, dynamic>;
      final body = PackageCreationInput.fromJson(
        response['body'] as Map<String, Object?>,
      );

      final result = await Api.I.api.packages.postV1Packages(body: body);
      final links = result.uploadLinks.entries.toList();

      await parser.load(fileData);
      final filesHash = response['files'] as Map<String, dynamic>;
      parser.filesHash.addAll(
        filesHash.map((a, b) {
          final archiveFile = parser.archive!.firstWhere((e) => e.name == b);
          return MapEntry(a, archiveFile);
        }),
      );
      await _uploadFiles(links, parser);
    } finally {
      worker
        ..stop()
        ..release();
      await parser.dispose();
    }
  }

  Future<void> _uploadFiles(
    List<MapEntry<String, String>> links,
    SiqArchiveParser parser,
  ) async {
    logger.d('Uploading ${links.length} files...');
    final client = Dio(
      BaseOptions(
        persistentConnection: false,
        validateStatus: (status) {
          if ({520, 412}.contains(status)) return true;
          return status != null && status >= 200 && status < 300;
        },
      ),
    );

    try {
      for (final link in links) {
        final archiveFile = parser.filesHash[link.key];
        final file = archiveFile?.content as Uint8List?;
        await archiveFile?.close();
        if (file == null) continue;
        final fileHeaders = _fileHeaders(link.key);

        await client.put<void>(
          link.value,
          data: file,
          options: Options(
            headers: {
              ...fileHeaders,
              'Content-Length': file.lengthInBytes.toString(),
            },
            contentType: 'application/octet-stream',
          ),
        );
      }
      logger.d('All files uploaded!');
    } catch (e, s) {
      logger.e(e, stackTrace: s);
      rethrow;
    } finally {
      await parser.dispose();
    }
  }

  Map<String, String> _fileHeaders(String hash) {
    final encodedHash = hexToBase64(hash);
    return {'Content-MD5': encodedHash, 'if-none-match': '*'};
  }
}
