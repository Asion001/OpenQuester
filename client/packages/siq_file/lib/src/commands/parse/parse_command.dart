import 'package:mason_logger/mason_logger.dart';

import 'package:siq_file/src/commands/common/file_command.dart';

class ParseCommand extends FileCommand {
  ParseCommand({Logger? logger}) : _logger = logger ?? Logger();

  @override
  String get description => 'Command for parsing siq file.';

  @override
  String get name => 'parse';

  final Logger _logger;

  @override
  Future<int> run() async {
    final siqFile = await getFile();
    _logger.success('Package title: ${siqFile.title}');

    return ExitCode.success.code;
  }
}
