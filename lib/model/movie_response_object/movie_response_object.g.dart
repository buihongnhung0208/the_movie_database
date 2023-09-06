// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_response_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieResponseObject _$$_MovieResponseObjectFromJson(
        Map<String, dynamic> json) =>
    _$_MovieResponseObject(
      backdropPath: json['backdrop_path'] as String? ?? '',
      id: json['id'] as int? ?? 1,
      originalLanguage: json['original_language'] as String? ?? 'en',
      originalTitle: json['original_title'] as String? ?? '',
      overview: json['overview'] as String? ?? '',
      posterPath: json['poster_path'] as String? ?? '',
      title: json['title'] as String? ?? '',
      voteAverage: (json['vote_average'] as num?)?.toDouble() ?? 0.0,
      voteCount: json['vote_count'] as int? ?? 0,
      status: json['status'] as String? ?? "",
      revenue: json['revenue'] as int? ?? 0,
      video: json['video'] as bool? ?? false,
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => GenreObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MovieResponseObjectToJson(
        _$_MovieResponseObject instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'title': instance.title,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'status': instance.status,
      'revenue': instance.revenue,
      'video': instance.video,
      'genres': instance.genres,
    };
