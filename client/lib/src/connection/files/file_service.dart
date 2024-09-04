import 'package:file_picker/file_picker.dart';
import 'package:openquester/src/utils/extensions.dart';

export 'package:file_picker/file_picker.dart';

abstract class FileService {
  static Future<FilePickerResult?> pickFile() async {
    final conf = PlatformExtension.isMobile
        ? PickerSettings.mobile()
        : PickerSettings.other();

    final result = await FilePicker.platform.pickFiles(
      type: conf.type,
      allowedExtensions: conf.allowedExtensions,
      withReadStream: true,
    );

    final ext = result?.files.firstOrNull?.extension;
    if (ext != null && !PickerSettings.isExtensionSupported(ext)) {
      throw Exception('Extension $ext is not supported!');
    }

    if (result == null) return null;
    return result;
  }
}

class PickerSettings {
  final List<String>? allowedExtensions;
  final FileType type;

  const PickerSettings({
    this.allowedExtensions,
    required this.type,
  });

  factory PickerSettings.mobile() => const PickerSettings(type: FileType.any);
  factory PickerSettings.other() => const PickerSettings(
      allowedExtensions: siqExtensions, type: FileType.custom);

  static const List<String> siqExtensions = ['siq'];
  static bool isExtensionSupported(String ext) => siqExtensions.contains(ext);
}
