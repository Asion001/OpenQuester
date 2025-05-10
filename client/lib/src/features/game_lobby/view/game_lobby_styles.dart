import 'package:flutter/widgets.dart';
import 'package:openquester/common_imports.dart';

class GameLobbyStyles {
  static const Size players = Size(180, 90);
  static const Size playersMobile = Size.square(80);
  static const double desktopChatWidth = 350;

  static Size questionSize(BuildContext context) {
    final wideMode = UiModeUtils.wideModeOn(context);
    return wideMode ? const Size(140, 80) : const Size.square(64);
  }

  static TextStyle? playerTextStyle(BuildContext context) {
    final wideMode = playersOnLeft(context);
    return wideMode ? context.textTheme.bodyLarge : context.textTheme.bodySmall;
  }

  static bool desktopChat(BuildContext context) =>
      UiModeUtils.wideModeOn(context, UiModeUtils.large);

  static bool playersOnLeft(BuildContext context) =>
      MediaQuery.sizeOf(context).aspectRatio > 1;
}
