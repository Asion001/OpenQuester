import 'package:flutter/material.dart';
import 'package:openquester/openquester.dart';
import 'package:updat/updat.dart';

class UpdateBtn extends StatelessWidget {
  const UpdateBtn({super.key});

  @override
  Widget build(BuildContext context) {
    if (!getIt<AutoUpdateController>().showUpdateBtn) {
      return const SizedBox.shrink();
    }

    return UpdatWidget(
      currentVersion: getIt<AutoUpdateController>().getCurrentVersion,
      getLatestVersion: getIt<AutoUpdateController>().getLatestVersion,
      getBinaryUrl: getIt<AutoUpdateController>().getBinaryUrl,
      appName: LocaleKeys.openquester.tr(),
    );
  }
}
