import 'package:flutter/material.dart';
import 'package:siq_file/siq_file.dart';

import '../../../connection/files/file_service.dart';

class FileOpening extends StatefulWidget {
  const FileOpening({super.key});

  @override
  State<FileOpening> createState() => _FileOpeningState();
}

class _FileOpeningState extends State<FileOpening> {
  SiqFile? siqFile;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Text('Pack name: ${siqFile?.metadata.title}')),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.file_open),
                  onPressed: _openFile,
                ),
                IconButton(
                  icon: const Icon(Icons.upload_file),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ],
    );
  }

  Future<void> _openFile() async {
    DateTime now = DateTime.now();

    final result = await FileService.pickFile();

    final pickedTime = now.difference(DateTime.now());
    now = DateTime.now();

    final file = result?.files.first;
    if (file == null) return;

    final fileStream = FileStream(
      fileLength: file.size,
      stream: file.readStream!,
    );
    siqFile = await SiqArchiveParser(fileStream).parse(hashFiles: true);
    setState(() {});

    final parseTime = now.difference(DateTime.now());

    final debugText = '''
    parseTime: $parseTime;
    pickedTime: $pickedTime;
    rounds: ${siqFile?.rounds.length}''';
    // ignore: avoid_print
    print(debugText);
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(debugText)));
  }
}
