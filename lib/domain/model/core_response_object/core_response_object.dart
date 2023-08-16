import 'package:json_annotation/json_annotation.dart';
import 'package:the_movie_database/data/interfaces/base_response_object.dart';
import 'package:the_movie_database/domain/model/data/data_response_object.dart';
import 'package:the_movie_database/domain/model/json_object/json_object.dart';

part 'core_response_object.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class CoreResponseObject<T> extends BaseResponseObject<T> {
  const CoreResponseObject({this.statusCode, this.message, this.error, super.data});

  final int? statusCode;
  final String? message;
  final String? error;

  factory CoreResponseObject.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) jsonToT,
  ) {
    return _$CoreResponseObjectFromJson(json, jsonToT);
  }

  Map<String, dynamic> toJson(
    Map<String, dynamic> Function(T value) toJsonT,
  ) =>
      _$CoreResponseObjectToJson(this, toJsonT);

  @override
  List<Object?> get props => [statusCode, data];
}

CoreResponseObject<JSONObject?> decodeJsonObject(Map<String, dynamic> json) =>
    CoreResponseObject<JSONObject?>.fromJson(json, (json) => json as JSONObject);

CoreResponseObject<DataResponseObject?> decodeJsonToDataResponseObject(
        Map<String, dynamic> json) =>
    CoreResponseObject<DataResponseObject?>.fromJson(json, jsonToNullableDataResponseObject);
