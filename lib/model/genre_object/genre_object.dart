import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre_object.freezed.dart';

part 'genre_object.g.dart';

@freezed
@genJsonToThisOne
class GenreObject with _$GenreObject {
  const factory GenreObject({
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'id') @Default(1) int id,
  }) = _GenreObject;

  factory GenreObject.fromJson(Map<String, dynamic> json) =>
      _$GenreObjectFromJson(json);
}