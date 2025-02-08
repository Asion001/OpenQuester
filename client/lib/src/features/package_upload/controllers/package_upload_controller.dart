import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';
import 'package:siq_file/siq_file.dart';

@singleton
class PackageUploadController extends ChangeNotifier {
  bool loading = false;

  Future<void> pickAndUpload() async {
    loading = true;
    notifyListeners();

    final fileResult = await FileService.pickFile();
    final file = fileResult?.files.firstOrNull;
    if (file == null) return;

    final fileStream = FileStream(
      fileLength: file.size,
      stream: file.readStream!,
    );
    final siqFile = await SiqArchiveParser(fileStream).parse(hashFiles: true);
    final body = PackageCreationInput(
      content: OQContentStructure.fromJson(siqFile.toJson()),
    );
    final result = await Api.I.api.packages.postV1Packages(body: body);
    print('object');
  }
}
