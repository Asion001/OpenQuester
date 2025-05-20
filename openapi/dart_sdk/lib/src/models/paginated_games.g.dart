// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_games.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginatedGames _$PaginatedGamesFromJson(Map<String, dynamic> json) =>
    _PaginatedGames(
      data: (json['data'] as List<dynamic>)
          .map((e) => GameListItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageInfo: PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaginatedGamesToJson(_PaginatedGames instance) =>
    <String, dynamic>{'data': instance.data, 'pageInfo': instance.pageInfo};
