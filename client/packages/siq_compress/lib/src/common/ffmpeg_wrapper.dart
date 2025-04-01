/* 
ffmpeg -i input.mp4 \
  -map 0:v:0 -map 0:a:0 \
  -c:v libsvtav1 -crf 52 -fpsmax 25 -threads 8 -preset 4 -pix_fmt yuv420p \
  -color_range mpeg \
  -c:a libopus -b:a 96k -vbr on -ar 48000 -sample_fmt s16 \
  -vf "scale='if(gt(a,1280/720),1280,-2)':'if(gt(a,1280/720),-2,720)'" \
  -t 10 -map_metadata -1 \
  output.webm 
  */

import 'dart:convert';
import 'dart:io';

import 'package:cross_file/cross_file.dart';
import 'package:siq_compress/src/models/ffprobe_output.dart';

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

    final result = await Process.run(executable, [...arguments, file.path]);
    return FfprobeOutput.fromJson(
      jsonDecode(result.stdout.toString()) as Map<String, dynamic>,
    );
  }
}
