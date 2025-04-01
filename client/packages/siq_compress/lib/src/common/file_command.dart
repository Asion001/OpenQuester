import 'package:args/command_runner.dart';
import 'package:cross_file/cross_file.dart';
import 'package:mason_logger/mason_logger.dart';
import 'package:siq_compress/src/siq_file_encoder.dart';

abstract class FileCommand extends Command<int> {
  FileCommand({required this.logger});
  final Logger logger;

  Future<XFile> getFile() async {
    if (argResults!.rest.isEmpty) {
      usageException('Provide file path');
    }
    if (argResults!.rest.length > 1) {
      usageException('Too many arguments');
    }

    final target = argResults!.rest[0];
    final targetFile = XFile(target);

    return targetFile;
  }

  late final fileEncoder = SiqFileEncoder();
}
