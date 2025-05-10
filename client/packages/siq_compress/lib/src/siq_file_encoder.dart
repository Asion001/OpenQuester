import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:archive/archive.dart';
import 'package:archive/archive_io.dart';
import 'package:collection/collection.dart';
import 'package:cross_file/cross_file.dart';
import 'package:siq_compress/src/common/command_wrapper.dart';
import 'package:siq_compress/src/models/ffprobe_output.dart';

class SiqFileEncoder {
  Future<FfprobeOutput> getMetadata(XFile file) async {
    final result = await processWithTmpFile(
      file: file,
      command: (file) async => CommandWrapper().metadata(file),
    );
    return result!;
  }

  Future<XFile> encode({
    required XFile inputFile,
    required XFile outputFile,
    required CodecType codecType,
  }) async {
    final result = await processWithTmpFile(
      file: inputFile,
      command: (file) async => CommandWrapper().encode(
        inputFile: inputFile,
        outputFile: outputFile,
        codecType: codecType,
      ),
    );
    return result;
  }

  Future<Uint8List> fileToBytes(XFile file) async => file.readAsBytes();

  /// Run [command] with temp file for use,
  /// so in process input file can be removed.
  ///
  /// After running remove temp folder
  ///
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

  CodecType? getFileType(FfprobeOutput metadata) {
    final withVideo = metadata.streams
        .firstWhereOrNull((e) => e.codecType == CodecType.video);
    final withAudio = metadata.streams
        .firstWhereOrNull((e) => e.codecType == CodecType.audio);
    if (withVideo != null && withAudio?.codecName != 'mjpeg') {
      if (metadata.streams.length == 1) return CodecType.image;
      return CodecType.video;
    }
    if (withAudio != null) return CodecType.audio;
    return null;
  }

  Future<XFile?> encodePackage(File file) async {
    final inputDir =
        Directory([file.parent.path, 'input'].join(Platform.pathSeparator));
    final outputDir =
        Directory([file.parent.path, 'output'].join(Platform.pathSeparator));
    await outputDir.create();
    
    await extractFileToDisk(file.path, inputDir.path);
    unawaited(file.delete());

    return null;
  }

  void dispose() {}
}
