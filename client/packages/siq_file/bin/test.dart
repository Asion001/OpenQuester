import 'dart:convert';
import 'dart:typed_data';

import 'package:archive/archive.dart';
import 'package:crypto/crypto.dart';
import 'package:universal_io/io.dart';

void main(List<String> args) {
  final fileData = File(args[0]).readAsBytesSync();
  final hash = md5.convert(fileData);
  print(hash.toString());
  print(base64Encode(hash.bytes));
}
