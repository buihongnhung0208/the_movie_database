// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_movies_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListMoviesParams _$$_ListMoviesParamsFromJson(Map<String, dynamic> json) =>
    _$_ListMoviesParams(
      language: json['language'] as String? ?? 'en-US',
      page: json['page'] as int? ?? 1,
    );

Map<String, dynamic> _$$_ListMoviesParamsToJson(_$_ListMoviesParams instance) =>
    <String, dynamic>{
      'language': instance.language,
      'page': instance.page,
    };
