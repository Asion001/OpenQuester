import 'package:background_downloader/background_downloader.dart';
import 'package:openquester/common_imports.dart';

@singleton
class LoadController {
  final _downloader = FileDownloader(
    persistentStorage: LocalStorePersistentStorage(),
  );
  Future<Batch> addUpload(List<Uri> links) async {
    final tasks =
        links.map((e) {
          final filename = e.pathSegments.last;
          return UploadTask(
            url: e.toString(),
            filename: filename,
            baseDirectory: BaseDirectory.temporary,
            httpRequestMethod: 'PUT',
            requiresWiFi: true,
            retries: 3,
            creationTime: DateTime.now(),
            taskId: filename,
          );
        }).toList();
    return _downloader.uploadBatch(tasks);
  }
}
