import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_movie_database/model/movie_response_object/movie_response_object.dart';

part 'list_response_object.freezed.dart';

part 'list_response_object.g.dart';

@freezed
@genJsonToThisOne
class ListResponseObject with _$ListResponseObject {
  const factory ListResponseObject({
    @JsonKey(name: 'page') @Default(1) int page,
    @JsonKey(name: 'results') @Default([]) List<MovieResponseObject> results,
    @JsonKey(name: 'total_pages') @Default(1) int totalPages,
    @JsonKey(name: 'total_results') @Default(1) int totalResults,
  }) = _ListResponseObject;

  factory ListResponseObject.fromJson(Map<String, dynamic> json) =>
      _$ListResponseObjectFromJson(json);
}