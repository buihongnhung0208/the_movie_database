import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'image_response_object.freezed.dart';

part 'image_response_object.g.dart';

@freezed
@genJsonToThisOne
class ImageResponseObject with _$ImageResponseObject {
  const factory ImageResponseObject({
    @JsonKey(name: 'file_path') @Default('') String filePath,
    @JsonKey(name: 'width') @Default(0) int width,
    @JsonKey(name: 'height') @Default(0) int height,

  }) = _ImageResponseObject;

  factory ImageResponseObject.fromJson(Map<String, dynamic> json) =>
      _$ImageResponseObjectFromJson(json);
}