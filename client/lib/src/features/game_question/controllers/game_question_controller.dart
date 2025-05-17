import 'dart:async';

import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';
import 'package:path_provider/path_provider.dart';
import 'package:universal_io/io.dart';
import 'package:video_player/video_player.dart';

@singleton
class GameQuestionController {
  final questionFile = ValueNotifier<PackageQuestionFile?>(null);
  final mediaController = ValueNotifier<VideoPlayerController?>(null);
  late final question = ValueNotifier<PackageQuestionData?>(null)
    ..addListener(_onQuestionChange);

  File? _tmpFile;

  Future<void> clear() async {
    question.value = null;
    questionFile.value = null;
    _tmpFile?.deleteSync();
    _tmpFile = null;
  }

  Future<void> _onQuestionChange() async {
    await clearVideoControllers();

    final files = question.value?.questionFiles;

    questionFile.value = files?.firstOrNull;
    final file = questionFile.value?.file;

    if (file == null) return;

    if (file.type != PackageFileType.image) {
      VideoPlayerController controller;
      final uri = Uri.parse(file.link!);
      if (Platform.isMacOS) {
        final tmpDir = await getTemporaryDirectory();
        _tmpFile = File(
          [
            tmpDir.path,
            [
              file.md5,
              switch (file.type) {
                PackageFileType.video => 'mp4',
                PackageFileType.audio => 'mp3',
                PackageFileType.image => 'webp',
                _ => '',
              },
            ].join('.'),
          ].join(Platform.pathSeparator),
        );
        await getIt<DioController>().client.downloadUri(uri, _tmpFile!.path);
        controller = VideoPlayerController.file(_tmpFile!);
      } else {
        controller = VideoPlayerController.networkUrl(uri);
      }

      await controller.initialize();
      mediaController.value = controller;

      await controller.play();

      Future<void>.delayed(
        Duration(milliseconds: questionFile.value!.displayTime),
        () => mediaController.value?.pause(),
      );
    }
    // TODO: Start slideshow timer
  }

  void onAnswer() {
    getIt<GameLobbyController>()
        .socket
        ?.emit(SocketIOGameSendEvents.questionAnswer.json!);
  }

  Future<void> clearVideoControllers() async {
    await mediaController.value?.dispose();
    mediaController.value = null;
  }
}
