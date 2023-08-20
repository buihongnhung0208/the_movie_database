// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_response_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListResponseObject _$$_ListResponseObjectFromJson(
        Map<String, dynamic> json) =>
    _$_ListResponseObject(
      page: json['page'] as int? ?? 1,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) =>
                  MovieResponseObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalPages: json['total_pages'] as int? ?? 1,
      totalResults: json['total_results'] as int? ?? 1,
    );

Map<String, dynamic> _$$_ListResponseObjectToJson(
        _$_ListResponseObject instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
