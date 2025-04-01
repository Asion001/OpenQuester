import 'dart:convert';

import 'package:cross_file/cross_file.dart';
import 'package:siq_compress/src/models/ffprobe_output.dart';
import 'package:universal_io/io.dart';

class FFmpegWrapper {
  Future<FfprobeOutput?> metadata(XFile file) async {
    const arguments = [
      '-v',
      'quiet',
      '-print_format',
      'json',
      '-show_format',
      '-show_streams',
    ];
    const executable = 'ffprobe';

    final result = await _run(executable, [...arguments, file.path]);

    return FfprobeOutput.fromJson(
      jsonDecode(result!) as Map<String, dynamic>,
    );
  }

  Future<XFile> encode({
    required XFile inputFile,
    required XFile outputFile,
    required CodecType codecType,
  }) async {
    // Map only first chanels
    const mapArgs = ['-map', '0:v:0', '-map', '0:a:0'];
    const videoArgs = [
      '-crf',
      '40',
      '-fpsmax',
      '20',
      '-preset',
      '8',
    ];
    const videoFormatArgs = ['-pix_fmt', 'yuv420p', '-color_range', 'mpeg'];
    const audioArgs = [
      '-c:a',
      'libopus',
      '-b:a',
      '64k',
      '-vbr',
      'on',
      '-ar',
      '48000',
      '-sample_fmt',
      's16',
    ];
    const videoFilters = [
      '-vf',
      "scale='if(gt(a,1280/720),1280,-2)':'if(gt(a,1280/720),-2,720)'",
      '-t', // Cut first 10 seconds
      '10',
    ];
    const otherArgs = [
      '-progress',
      '-',
      '-map_metadata', // Remove all metadata like geo data from video
      '-1',
      '-y', // Force overwrite
    ];
    const general = [
      ...audioArgs,
      ...videoFilters,
      ...videoArgs,
      ...otherArgs,
    ];
    const mediaTypeArgs = [
      ...videoFormatArgs,
      ...mapArgs,
      '-f',
      'webm',
      '-c:v',
      'libsvtav1',
    ];
    final imageTypeArgs = [
      '-f',
      'avif',
      '-c:v',
      'libaom-av1',
      '-pix_fmt',
      'yuv420p10le',
    ];

    final notConstantArguments = [
      '-threads',
      '${Platform.numberOfProcessors}',
      '-i', // Input file
      inputFile.path,
      if (codecType != CodecType.image) ...mediaTypeArgs else ...imageTypeArgs,
      ...general,
      outputFile.path, // Output file
    ];

    const executable = 'ffmpeg';

    await _run(executable, notConstantArguments);
    return outputFile;
  }

  Future<String?> _run(
    String executable,
    List<String> arguments,
  ) async {
    final result = await Process.run(executable, arguments);
    if (result.exitCode != 0) {
      throw Exception(result.stderr.toString());
    }
    return result.stdout.toString();
  }
}
