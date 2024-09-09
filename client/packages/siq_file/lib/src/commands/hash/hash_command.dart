import 'dart:convert';

import 'package:mason_logger/mason_logger.dart';

import '../common/file_command.dart';

class HashCommand extends FileCommand {
  HashCommand({Logger? logger}) : _logger = logger ?? Logger();

  @override
  String get description => 'Command for getting content file with hash';

  @override
  String get name => 'hash';

  final Logger _logger;

  @override
  Future<int> run() async {
    final siqFile = await getFile(hashFiles: true);
    _logger.write(jsonEncode(siqFile.toJson()));

    return ExitCode.success.code;
  }
}