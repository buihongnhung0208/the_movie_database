import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_movie_database/model/image_response_object/image_response_object.dart';

part 'list_images_response_object.freezed.dart';
part 'list_images_response_object.g.dart';

@freezed
@genJsonToThisOne
class ListImagesResponseObject with _$ListImagesResponseObject {
  const factory ListImagesResponseObject({
    @JsonKey(name: 'id') @Default(1) int id,
    @JsonKey(name: 'profiles') @Default([]) List<ImageResponseObject> profiles,
  }) = _ListImagesResponseObject;

  factory ListImagesResponseObject.fromJson(Map<String, dynamic> json) =>
      _$ListImagesResponseObjectFromJson(json);
}
