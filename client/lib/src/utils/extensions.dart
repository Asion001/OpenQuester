import 'package:flutter/material.dart';
import 'package:openquester/common_imports.dart';
import 'package:socket_io_client/socket_io_client.dart' show Socket;

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

extension IPackageItemAgeRestrictionX on AgeRestriction {
  String? translate() => {
        AgeRestriction.a12: '12+',
        AgeRestriction.a16: '16+',
        AgeRestriction.a18: '18+',
      }[this];
}

extension WidgetX on Widget {
  Widget shrink() =>
      Row(mainAxisSize: MainAxisSize.min, children: [flexible()]);
}

extension NumberPaddings on num {
  EdgeInsets get all => EdgeInsets.all(toDouble());
  EdgeInsets get left => EdgeInsets.only(left: toDouble());
  EdgeInsets get right => EdgeInsets.only(right: toDouble());
  EdgeInsets get top => EdgeInsets.only(top: toDouble());
  EdgeInsets get bottom => EdgeInsets.only(bottom: toDouble());
  EdgeInsets get vertical => EdgeInsets.symmetric(vertical: toDouble());
  EdgeInsets get horizontal => EdgeInsets.symmetric(horizontal: toDouble());
  BorderRadius get circular => BorderRadius.circular(toDouble());
}

extension SocketX on Socket {
  void reconnect() {
    disconnect();
    connect();
  }
}
