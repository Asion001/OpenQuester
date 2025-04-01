import 'package:mason_logger/mason_logger.dart';
import 'package:siq_compress/src/common/file_command.dart';

class EncodeCommand extends FileCommand {
  EncodeCommand({required super.logger});

  @override
  String get description => 'Command for encoding media file.';

  @override
  String get name => 'metadata';

  @override
  Future<int> run() async {
    final file = await getFile();
    logger.info('Processing file: ${file.path.split('/').last}');

    final metadata = await fileEncoder.getMetadata(file);
    logger.success(metadata.toString());
    
    return ExitCode.success.code;
  }
}
