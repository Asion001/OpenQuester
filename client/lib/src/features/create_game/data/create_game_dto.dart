import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openquester/openquester.dart';

part 'create_game_dto.freezed.dart';

@freezed
abstract class CreateGameDto with _$CreateGameDto {
  const factory CreateGameDto({
    PackageListItem? package,
    String? gameName,
    @Default(AgeRestriction.none) AgeRestriction ageRestriction,
    @Default(false) bool private,
    @Default(10) int maxPlayers,
  }) = _CreateGameDto;
}

extension CreateGameDtoX on CreateGameDto {
  bool get valid {
    return package != null && gameName != null;
  }

  GameCreateData toRequestData() {
    return GameCreateData(
      title: gameName!,
      packageId: package!.id,
      isPrivate: private,
      ageRestriction: ageRestriction,
      maxPlayers: maxPlayers,
    );
  }
}
