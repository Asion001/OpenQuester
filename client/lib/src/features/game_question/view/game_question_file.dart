import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

class GameQuestionFile extends StatelessWidget {
  const GameQuestionFile({
    required this.file,
    super.key,
  });
  final PackageQuestionFile file;

  @override
  Widget build(BuildContext context) {
    final url = file.file.link;

    Widget child = const SizedBox.shrink();

    if (file.file.type == PackageFileType.image) {
      child = ImageWidget(url: url);
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
