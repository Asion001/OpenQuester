import 'dart:convert';

import 'package:mason_logger/mason_logger.dart';

import '../common/file_command.dart';

class ContentToJsonCommand extends FileCommand {
  ContentToJsonCommand({Logger? logger}) : _logger = logger ?? Logger() {
    argParser.addOption(
      'xml-file',
      help: 'Unziped content.xml file path',
    );
  }

  @override
  String get description =>
      'Command for exporting content file from siq file to json format';

  @override
  String get name => 'json';

  final Logger _logger;

  @override
  Future<int> run() async {
    final siqFile = await getFile(xmlFilePath: argResults?.option('xml-file'));
    _logger.write(jsonEncode(siqFile.toJson()));

    return ExitCode.success.code;
  }
}
