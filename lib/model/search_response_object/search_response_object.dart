import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_movie_database/model/person_response_object/person_response_object.dart';

part 'search_response_object.freezed.dart';
part 'search_response_object.g.dart';

@freezed
@genJsonToThisOne
class SearchResponseObject with _$SearchResponseObject {
  const factory SearchResponseObject({
    @JsonKey(name: 'page') @Default(1) int page,
    @JsonKey(name: 'results') @Default([]) List<PersonResponseObject> results,
    @JsonKey(name: 'total_pages') @Default(1) int totalPages,
    @JsonKey(name: 'total_results') @Default(1) int totalResults,
  }) = _SearchResponseObject;

  factory SearchResponseObject.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseObjectFromJson(json);
}