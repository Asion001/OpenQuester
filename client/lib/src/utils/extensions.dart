import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';

extension DurationX on Duration {
  String f({bool withSeconds = false}) {
    final out = <String>[];

    if (inHours > 0) {
      out.add([inHours, LocaleKeys.duration_h.tr()].join());
    }

    final minutes = inMinutes - inHours * 60;
    if (minutes > 0) {
      out.add([minutes, LocaleKeys.duration_m.tr()].join());
    }

    final seconds = inSeconds - inMinutes * 60;
    if (withSeconds && seconds > 0) {
      out.add([seconds, LocaleKeys.duration_s.tr()].join());
    }

    return out.join(' ');
  }
}

extension IPackageItemAgeRestrictionX on PackageItemAgeRestriction {
  String? translate() =>
      {
        PackageItemAgeRestriction.a12: '12+',
        PackageItemAgeRestriction.a16: '16+',
        PackageItemAgeRestriction.a18: '18+',
      }[this];
}

extension WidgetX on Widget {
  Widget shrink() =>
      Row(mainAxisSize: MainAxisSize.min, children: [flexible()]);
}
