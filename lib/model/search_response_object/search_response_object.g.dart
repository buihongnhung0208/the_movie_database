// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchResponseObject _$$_SearchResponseObjectFromJson(
        Map<String, dynamic> json) =>
    _$_SearchResponseObject(
      page: json['page'] as int? ?? 1,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) =>
                  PersonResponseObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalPages: json['total_pages'] as int? ?? 1,
      totalResults: json['total_results'] as int? ?? 1,
    );

Map<String, dynamic> _$$_SearchResponseObjectToJson(
        _$_SearchResponseObject instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
