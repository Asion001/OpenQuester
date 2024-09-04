import 'package:universal_io/io.dart';

extension PlatformExtension on Platform {
  static bool get isMobile => Platform.isAndroid || Platform.isIOS;
}
