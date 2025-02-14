import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';
import 'package:universal_io/io.dart';

extension PlatformExtension on Platform {
  static bool get isMobile => Platform.isAndroid || Platform.isIOS;
}

extension DurationX on Duration {
  String f({bool withSeconds = false}) {
    List<String> out = [];

    if (inHours > 0) {
      out.add([inHours, LocaleKeys.duration_h.tr()].join(''));
    }

    final minutes = inMinutes - inHours * 60;
    if (minutes > 0) {
      out.add([minutes, LocaleKeys.duration_m.tr()].join(''));
    }

    final seconds = inSeconds - inMinutes * 60;
    if (withSeconds && seconds > 0) {
      out.add([seconds, LocaleKeys.duration_s.tr()].join(''));
    }

    return out.join(' ');
  }
}

extension IPackageItemAgeRestrictionX on IPackageItemAgeRestriction {
  String? translate() =>
      {
        IPackageItemAgeRestriction.a12: '12+',
        IPackageItemAgeRestriction.a16: '16+',
        IPackageItemAgeRestriction.a18: '18+',
      }[this];
}

extension WidgetX on Widget {
  Widget shrink() =>
      Row(mainAxisSize: MainAxisSize.min, children: [flexible()]);
}
