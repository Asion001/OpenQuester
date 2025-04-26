import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';

class UploadPackageButton extends WatchingWidget {
  const UploadPackageButton({
    this.afterUpload,
    super.key,
  });

  final void Function(PackageListItem package)? afterUpload;

  @override
  Widget build(BuildContext context) {
    final controller = watchIt<PackageUploadController>();

    return LoadingButtonBuilder(
      onPressed: () async {
        try {
          final result = await getIt<PackageUploadController>().pickAndUpload();
          if (afterUpload != null && result != null) {
            final package = await getIt<PackageController>().getPackage(result);
            afterUpload!(package);
          }
        } catch (e) {
          if (!context.mounted) return;
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(e.toString())),
          );
        }
      },
      child: const Icon(Icons.upload),
      builder: (context, child, onPressed) {
        return FilledButton.icon(
          onPressed: onPressed,
          label: Text(
            [
              LocaleKeys.upload_package.tr(),
              if (controller.loading) ...[
                (100 * controller.progress).ceil(),
                '%',
              ],
            ].join(' '),
          ),
          icon: child,
        );
      },
    );
  }
}
