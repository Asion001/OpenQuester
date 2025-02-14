import 'package:flutter/material.dart';

class ImgTest extends StatefulWidget {
  const ImgTest({super.key});

  @override
  State<ImgTest> createState() => _ImgTestState();
}

class _ImgTestState extends State<ImgTest> {
  final TextEditingController _controller = TextEditingController();
  Uri? url;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: TextFormField(controller: _controller)),
            IconButton(
              icon: const Icon(Icons.check),
              onPressed: () {
                setState(() {
                  url = Uri.tryParse(_controller.text);
                });
              },
            ),
          ],
        ),
        if (url != null)
          Image.network(
            url!.toString(),
            errorBuilder: (context, error, stackTrace) {
              return Text(error.toString());
            },
          ),
      ],
    );
  }
}
