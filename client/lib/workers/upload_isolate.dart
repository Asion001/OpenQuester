import 'dart:async';
import 'dart:convert';

import 'package:openapi/openapi.dart' show PackageCreationInput;
import 'package:siq_file/siq_file.dart';
import 'package:squadron/squadron.dart';

// ignore: always_use_package_imports
import 'upload_isolate.activator.g.dart';

part 'upload_isolate.worker.g.dart';

@SquadronService(baseUrl: '~/workers')
base class ParseSiqFile {
  @SquadronMethod()
  Future<String> compute(List<int> fileData) async {
    final parser = SiqArchiveParser(fileData);
    final siqFile = await parser.parse();
    final body = PackageCreationInput(content: siqFile).toJson();
    final files = parser.filesHash.map((a, b) => MapEntry(a, b.name));
    final result = {'body': body, 'files': files};
    return jsonEncode(result);
  }
}
