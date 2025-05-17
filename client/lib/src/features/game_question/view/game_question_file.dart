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

    onDispose(getIt<GameQuestionController>().clearVideoControllers);

    final url = file.file.link;
    var child = const CircularProgressIndicator().center();

    if (file.file.type == PackageFileType.image) {
      child = ImageWidget(url: url);
    } else if (mediaController != null) {
      child = AspectRatio(
        aspectRatio: mediaController.value.aspectRatio,
        child: VideoPlayer(mediaController),
      ).center();
    }

    return Container(
      decoration: BoxDecoration(
        borderRadius: 8.circular,
        border: Border.all(
          color: context.theme.colorScheme.primary,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: AspectRatio(aspectRatio: 1, child: child),
    );
  }
}
