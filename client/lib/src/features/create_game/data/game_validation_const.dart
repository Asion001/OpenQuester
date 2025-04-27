class GameValidationConst {
  static const int maxGameNameLenght = 70;
  static const int minGameNameLenght = 3;
  static const int minMaxPlayers = 2;
  static const int maxMaxPlayers = 15;

  /// Matches any printable Unicode character (including emoji), length 1–100:
  static final gameNameRegExp = RegExp(r'^[^\x00-\x1F]{1,100}$', unicode: true);
}
