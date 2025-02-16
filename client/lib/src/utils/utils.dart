import 'package:flutter/foundation.dart';
import 'package:universal_io/io.dart';

final bool isDesktopPlatform =
    kIsWeb || kIsWasm
        ? true
        : Platform.isLinux || Platform.isWindows || Platform.isMacOS;
