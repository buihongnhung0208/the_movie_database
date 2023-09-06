import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_movie_database/model/genre_object/genre_object.dart';

part 'movie_response_object.freezed.dart';

part 'movie_response_object.g.dart';

@freezed
@genJsonToThisOne
class MovieResponseObject with _$MovieResponseObject {
  const factory MovieResponseObject({
    @JsonKey(name: 'backdrop_path') @Default('') String backdropPath,
    @JsonKey(name: 'id') @Default(1) int id,
    @JsonKey(name: 'original_language') @Default('en') String originalLanguage,
    @JsonKey(name: 'original_title') @Default('') String originalTitle,
    @JsonKey(name: 'overview') @Default('') String overview,
    @JsonKey(name: 'poster_path') @Default('') String posterPath,
    @JsonKey(name: 'title') @Default('') String title,
    @JsonKey(name: 'vote_average') @Default(0.0) double voteAverage,
    @JsonKey(name: 'vote_count') @Default(0) int voteCount,
    @JsonKey(name: 'status') @Default("") String status,
    @JsonKey(name: 'revenue') @Default(0) int revenue,
    @JsonKey(name: 'video') @Default(false) bool video,
    @JsonKey(name: 'genres') @Default([]) List<GenreObject> genres,
  }) = _MovieResponseObject;

  factory MovieResponseObject.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseObjectFromJson(json);
}