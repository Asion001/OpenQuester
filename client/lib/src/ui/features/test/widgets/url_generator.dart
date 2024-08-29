import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:openquester/src/application/logger.dart';
import 'package:openquester/src/connection/s3/s3.dart';

class UrlGeneratorTest extends StatefulWidget {
  const UrlGeneratorTest({super.key});

  @override
  State<UrlGeneratorTest> createState() => _UrlGeneratorTestState();
}

class _UrlGeneratorTestState extends State<UrlGeneratorTest> {
  final TextEditingController _fileNameController =
      TextEditingController(text: 'text');
  final TextEditingController _bucketController = TextEditingController();
  final TextEditingController _endpointController =
      TextEditingController(text: 's3.asion.dev');
  final TextEditingController _accessKeyController = TextEditingController();
  final TextEditingController _secretKeyController = TextEditingController();

  Uri? url;
  S3Method _method = S3Method.get;
  String? error;

  Widget _form(TextEditingController? controller, String name) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(hintText: name),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _form(_bucketController, 'Bucket name'),
        _form(_endpointController, 'Endpoint'),
        _form(_accessKeyController, 'Access key'),
        _form(_secretKeyController, 'Secret key'),
        _methodPicker(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: _form(_fileNameController, 'File name')),
            IconButton(
              icon: const Icon(Icons.check),
              onPressed: _onSubmit,
            )
          ],
        ),
        if (error != null) SelectableText(error!),
        SelectableText(
          url?.toString() ?? '',
          onTap: () {
            Clipboard.setData(ClipboardData(text: url.toString()));
          },
        )
      ],
    );
  }

  SegmentedButton<S3Method> _methodPicker() {
    return SegmentedButton<S3Method>(
      segments: S3Method.values
          .map(
            (e) => ButtonSegment<S3Method>(
              value: e,
              label: Text(e.name.toUpperCase()),
            ),
          )
          .toList(),
      selected: {_method},
      onSelectionChanged: (newSelection) {
        setState(() {
          _method = newSelection.first;
        });
      },
    );
  }

  void _onSubmit() async {
    try {
      final s3 = S3(
        bucket: _bucketController.text,
        s3: S3Storage(
          endPoint: _endpointController.text,
          accessKey: _accessKeyController.text,
          secretKey: _secretKeyController.text,
          signingType: SigningType.V4,
        ),
      );
      url = await s3.getUri(
        _fileNameController.text,
        method: S3Method.put,
      );
      error = null;
      setState(() {});
    } catch (e) {
      logger.e(e);
      error = e.toString();
      setState(() {});
    }
  }
}
