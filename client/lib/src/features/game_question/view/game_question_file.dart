import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';
import 'package:video_player/video_player.dart';

class GameQuestionFile extends WatchingWidget {
  const GameQuestionFile({
    required this.file,
    super.key,
  });
  final PackageQuestionFile file;

  @override
  Widget build(BuildContext context) {
    final mediaController =
        watchValue((GameQuestionController e) => e.mediaController);
    final error = watchValue((GameQuestionController e) => e.error);

    onDispose(getIt<GameQuestionController>().clearVideoControllers);

    final url = file.file.link;
    Widget child = const CircularProgressIndicator();

    final fileType = file.file.type;

    if (error != null) {
      child = Text(error);
    } else if (fileType == PackageFileType.image) {
      child = ImageWidget(url: url);
    } else if (mediaController != null) {
      if (fileType == PackageFileType.audio) {
        child = const Icon(Icons.music_note, size: 60);
      } else {
        child = AspectRatio(
          aspectRatio: mediaController.value.aspectRatio,
          child: VideoPlayer(mediaController),
        );
      }
    }

    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: 8.circular,
          border: Border.all(
            color: context.theme.colorScheme.primary,
            strokeAlign: BorderSide.strokeAlignOutside,
          ),
        ),
        clipBehavior: Clip.antiAlias,
        child: child.center(),
      ).center(),
    );
  }
}
