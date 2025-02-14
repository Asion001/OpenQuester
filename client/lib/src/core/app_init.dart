import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:openquester/src/core/get_it.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'env.dart';
import 'logger.dart';

class AppInit {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    // Init localization
    await EasyLocalization.ensureInitialized();

    AppInit.packageInfo = await PackageInfo.fromPlatform();

    setUrlStrategy(PathUrlStrategy());

    logger.i(await getInitInfo());
  }

  static Future<void> buildInit() async {
    await configureDependencies();
  }

  static Future<String> getInitInfo() async {
    final parameters = {
      'Version': packageInfo.version,
      'Build number': packageInfo.buildNumber,
      'Api Domain': Env.apiUrl.toString(),
    };

    String result = parameters.entries
        .map((e) => '${e.key}: ${e.value}')
        .join('\n');
    return result;
  }

  static late PackageInfo packageInfo;
}
