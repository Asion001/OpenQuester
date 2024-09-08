import 'package:flutter/widgets.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:openquester/src/application/get_it.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'env.dart';
import 'logger.dart';

abstract class AppInit {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    configureDependencies();
    AppInit.packageInfo = await PackageInfo.fromPlatform();
    // ignore: prefer_const_constructors
    setUrlStrategy(PathUrlStrategy());
    logger.i(await getInitInfo());
  }

  static Future<String> getInitInfo() async {
    final parameters = {
      'Version': packageInfo.version,
      'Build number': packageInfo.buildNumber,
      'Api Domain': Env.apiUrl.toString(),
    };

    String result =
        parameters.entries.map((e) => '${e.key}: ${e.value}').join('\n');
    return result;
  }

  static late PackageInfo packageInfo;
}
