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
                onPressed: loading
                    ? null
                    : () async {
                        try {
                          await getIt<PackageUploadController>()
                              .pickAndUpload();
                        } catch (e) {
                          if (!context.mounted) return;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(e.toString())),
                          );
                        }
                      },
                icon: loading
                    ? const CircularProgressIndicator.adaptive()
                    : const Icon(Icons.upload),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
