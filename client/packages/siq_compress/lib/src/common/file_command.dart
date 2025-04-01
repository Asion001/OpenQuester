import 'package:args/command_runner.dart';
import 'package:cross_file/cross_file.dart';
import 'package:mason_logger/mason_logger.dart';
import 'package:siq_compress/src/siq_file_encoder.dart';

abstract class FileCommand extends Command<int> {
  FileCommand({required this.logger});
  final Logger logger;

  Future<XFile> getInputFile() async => _getFile(0);
  Future<XFile> getOutputFile() async => _getFile(1);

  XFile _getFile(int index) {
    if (argResults!.rest.isEmpty) {
      usageException('Provide file path');
    }

    final target = argResults!.rest[index];
    final targetFile = XFile(target);

    return targetFile;
  }

  late final fileEncoder = SiqFileEncoder();
}
