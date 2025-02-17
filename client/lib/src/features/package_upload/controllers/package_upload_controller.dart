import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:openquester/common_imports.dart';
import 'package:openquester/src/features/package_upload/controllers/upload_isolate.dart';
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
    final fileData = (await file.xFile.readAsBytes()).toList();
    await _upload(fileData);
  }

  Future<void> _upload(List<int> fileData) async {
    final rawBody = await compute<List<int>, String>(
      isolatedParseSiqFile,
      fileData,
    );

    final response = jsonDecode(rawBody) as Map<String, dynamic>;
    final body = PackageCreationInput.fromJson(
      response['body'] as Map<String, Object?>,
    );

    final result = await Api.I.api.packages.postV1Packages(body: body);
    final links = result.uploadLinks.entries.toList();

    final parser = SiqArchiveParser(fileData);
    await parser.load();
    final filesHash = response['files'] as Map<String, dynamic>;
    parser.filesHash.addAll(
      filesHash.map((a, b) {
        final archiveFile = parser.archive!.firstWhere((e) => e.name == b);
        return MapEntry(a, archiveFile);
      }),
    );
    await _uploadFiles(links, parser);
    await parser.dispose();
  }

  Future<void> _uploadFiles(
    List<MapEntry<String, String>> links,
    SiqArchiveParser parser,
  ) async {
    logger.d('Uploading ${links.length} files...');
    Dio client() => Dio(
      BaseOptions(
        persistentConnection: true,
        validateStatus: (status) {
          if (status == 412) return true;
          return status != null && status >= 200 && status < 300;
        },
      ),
    );
    
    for (final link in links) {
      final archiveFile = parser.filesHash[link.key];
      final file = archiveFile?.readBytes();
      await archiveFile?.close();
      if (file == null) continue;
      final fileHeaders = _fileHeaders(link.key);
      await client().put<void>(
        link.value,
        data: file,
        options: Options(
          headers: {...fileHeaders},
          contentType: 'application/octet-stream',
        ),
      );
    }
  }

  Map<String, String> _fileHeaders(String hash) {
    final encodedHash = hexToBase64(hash);
    return {'Content-MD5': encodedHash, 'if-none-match': '*'};
  }
}
