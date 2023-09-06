import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_movie_database/model/movie_response_object/movie_response_object.dart';

part 'person_response_object.freezed.dart';

part 'person_response_object.g.dart';

@freezed
@genJsonToThisOne
class PersonResponseObject with _$PersonResponseObject {
  const factory PersonResponseObject({
    @JsonKey(name: 'adult') @Default(false) bool adult,
    @JsonKey(name: 'gender') @Default(1) int gender,
    @JsonKey(name: 'id') @Default(0) int id,
    @JsonKey(name: 'name') @Default("") String name,
    @JsonKey(name: 'original_name') @Default("") String originalName,
    @JsonKey(name: 'profile_path') @Default("") String profilePath,
    @JsonKey(name: 'known_for') @Default([]) List<MovieResponseObject> knownFor,

  }) = _PersonResponseObject;

  factory PersonResponseObject.fromJson(Map<String, dynamic> json) =>
      _$PersonResponseObjectFromJson(json);
}