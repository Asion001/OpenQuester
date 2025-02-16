import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

@RoutePage()
class PackageUploadScreen extends WatchingWidget {
  const PackageUploadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loading = watchIt<PackageUploadController>().loading;

    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed:
                    loading
                        ? null
                        : getIt<PackageUploadController>().pickAndUpload,
                icon:
                    loading
                        ? CircularProgressIndicator.adaptive()
                        : Icon(Icons.upload),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
