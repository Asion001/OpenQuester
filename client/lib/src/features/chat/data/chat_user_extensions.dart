import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:openquester/common_imports.dart';

extension UserX on User {
  static User fromPlayerData(PlayerData playerData) {
    return User(
      id: playerData.meta.id.toString(),
      firstName: playerData.meta.username,
      imageUrl: playerData.meta.avatar,
      role: Role.user,
    );
  }
}
