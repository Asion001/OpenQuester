// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_games.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginatedGamesImpl _$$PaginatedGamesImplFromJson(Map<String, dynamic> json) =>
    _$PaginatedGamesImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => GameListItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageInfo: PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaginatedGamesImplToJson(
        _$PaginatedGamesImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pageInfo': instance.pageInfo,
    };
