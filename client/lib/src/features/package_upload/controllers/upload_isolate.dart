import 'dart:convert';

import 'package:openquester/openquester.dart';
import 'package:siq_file/siq_file.dart';

Future<String> isolatedParseSiqFile(List<int> fileData) async {
  final parser = SiqArchiveParser(fileData);
  final siqFile = await parser.parse();
  final body = PackageCreationInput(content: siqFile).toJson();
  final files = parser.filesHash.map((a, b) => MapEntry(a, b.name));
  final result = {'body': body, 'files': files};
  return jsonEncode(result);
}
