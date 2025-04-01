import 'dart:io';
import 'dart:typed_data';

import 'package:cross_file/cross_file.dart';
import 'package:siq_compress/src/common/ffmpeg_wrapper.dart';
import 'package:siq_compress/src/models/ffprobe_output.dart';

class SiqFileEncoder {
  Future<FfprobeOutput> getMetadata(XFile file) async {
    final result = await processWithTmpFile(
      file: file,
      command: (file) async => FFmpegWrapper().metadata(file),
    );
    return result!;
  }

  Future<Uint8List> fileToBytes(XFile file) async => file.readAsBytes();

  Future<R> processWithTmpFile<R>({
    required XFile file,
    required Future<R> Function(XFile file) command,
  }) async {
    final tmpDir = await Directory.systemTemp.createTemp('siq-file-encode');
    final inputFile = XFile('${tmpDir.path}/input_file');
    await file.saveTo(inputFile.path);
    try {
      final result = await command(inputFile);
      return result;
    } finally {
      await tmpDir.delete(recursive: true);
    }
  }
}
