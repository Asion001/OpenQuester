import 'dart:convert';
import 'dart:typed_data' show Uint8List;

import 'package:flutter/foundation.dart' show ChangeNotifier;
import 'package:openquester/common_imports.dart' hide ParseSiqFileWorker;
import 'package:openquester/workers/upload_isolate.dart'
    deferred as upload_isolate
    show ParseSiqFileWorker;
import 'package:siq_file/siq_file.dart';

typedef PackageId = int;

@singleton
class PackageUploadController extends ChangeNotifier {
  bool loading = false;

  var _progress = 0.0;
  double get progress => _progress;

  /// Progress part after picking
  static const _afterPickProgress = 0.1;
  static const _afterParseProgress = 0.15;

  void _setProgress(double value) {
    _progress = value;
    notifyListeners();
  }

  Future<PackageId?> pickAndUpload() async {
    try {
      // Reset state
      loading = true;
      _setProgress(0);

      final fileResult = await FileService.pickFile();
      final file = fileResult?.files.firstOrNull;
      if (file == null) return null;

      return await upload(file);
    } catch (e, s) {
      logger.e(e, stackTrace: s);
      rethrow;
    } finally {
      loading = false;
      notifyListeners();
    }
  }

  /// return [int] is package id
  Future<PackageId> upload(PlatformFile file) async {
    final fileData = await file.xFile.readAsBytes();
    final result = await _upload(fileData);
    return result;
  }

  Future<PackageId> _upload(Uint8List fileData) async {
    await upload_isolate.loadLibrary();
    final worker = upload_isolate.ParseSiqFileWorker();
    final parser = SiqArchiveParser();
    try {
      await worker.start();
      final rawBody = await worker.compute(fileData);

      _setProgress(_afterPickProgress);

      final response = jsonDecode(rawBody) as Map<String, dynamic>;
      final body = PackageCreationInput.fromJson(
        response['body'] as Map<String, Object?>,
      );

      final result = await Api.I.api.packages.postV1Packages(body: body);
      final links = result.uploadLinks.entries.toList();

      await parser.load(fileData);

      // Fill filesHash
      (response['files'] as Map<String, dynamic>)
      // Add new files without duplicates, checking by name
      .forEach((key, rawFilePaths) {
        final paths = List<String>.from(rawFilePaths as List);
        // Find the ArchiveFile in the archive
        final archiveFile = parser.archive!.firstWhere(
          (e) => paths.contains(e.name),
        );
        final existing = parser.filesHash[key] ?? [];
        if (!existing.any((f) => f.name == archiveFile.name)) {
          parser.filesHash[key] = [...existing, archiveFile];
        }
      });

      await _uploadFiles(links, parser);
      return result.id;
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
    _setProgress(_afterParseProgress);

    try {
      for (var fileIndex = 0; fileIndex < links.length; fileIndex++) {
        // Set file upload progress
        final filesUploadProgress = fileIndex / links.length * 1;
        _setProgress(
          _afterParseProgress + (filesUploadProgress - _afterParseProgress),
        );

        final link = links[fileIndex];

        final archiveFile = parser.filesHash[link.key]?.firstOrNull;
        final file = archiveFile?.content;
        await archiveFile?.close();

        if (file == null) continue;

        await getIt<S3UploadController>().uploadFile(
          uploadLink: Uri.parse(link.value),
          file: file,
          md5Hash: link.key,
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
}
