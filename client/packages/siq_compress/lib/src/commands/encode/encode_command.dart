import 'package:mason_logger/mason_logger.dart';
import 'package:siq_compress/src/common/file_command.dart';

class MetadataCommand extends FileCommand {
  MetadataCommand({required super.logger});

  @override
  String get description => 'Command for getting media file metadata.';

  @override
  String get name => 'encode';

  @override
  Future<int> run() async {
    final file = await getFile();
    logger.info('Processing file: ${file.path.split('/').last}');

    return ExitCode.success.code;
  }
}
