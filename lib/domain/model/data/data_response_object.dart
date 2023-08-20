import 'package:annotations/annotations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_response_object.freezed.dart';
part 'data_response_object.g.dart';

@freezed
@genJsonToThisOne
class DataResponseObject with _$DataResponseObject {
  const factory DataResponseObject({
    @Default('') String encryptedData,
    @Default('') String signature,
  }) = _DataResponseObject;

  factory DataResponseObject.fromJson(Map<String, dynamic> json) =>
      _$DataResponseObjectFromJson(json);
}
