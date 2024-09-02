import 'package:file_picker/file_picker.dart';

export 'package:file_picker/file_picker.dart';

abstract class FileService {
  static Future<FilePickerResult?> pickFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['siq'],
      withReadStream: true,
    );

    if (result == null) return null;
    return result;
  }
}
