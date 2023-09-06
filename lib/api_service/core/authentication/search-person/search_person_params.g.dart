// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_person_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchPersonParams _$$_SearchPersonParamsFromJson(
        Map<String, dynamic> json) =>
    _$_SearchPersonParams(
      language: json['language'] as String? ?? 'en-US',
      query: json['query'] as String? ?? '',
      include_adult: json['include_adult'] as bool? ?? false,
      page: json['page'] as int? ?? 1,
    );

Map<String, dynamic> _$$_SearchPersonParamsToJson(
        _$_SearchPersonParams instance) =>
    <String, dynamic>{
      'language': instance.language,
      'query': instance.query,
      'include_adult': instance.include_adult,
      'page': instance.page,
    };
