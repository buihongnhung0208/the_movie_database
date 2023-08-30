import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mg_api_service/extension/type_alias.dart';

part 'core_response.freezed.dart';
part 'core_response.g.dart';

class CoreResponse<T> {
  CoreResponse(this.code, this.data, this.message, this.error);

  final String? code;
  final T? data;
  final String? message;
  final String? error;
}

@Freezed(genericArgumentFactories: true)
abstract class CoreResponseObject<T> with JSONData, _$CoreResponseObject<T> {
  const factory CoreResponseObject({
    int? statusCode,
    T? data,
    dynamic message,
    String? error,
  }) = _CoreResponseObject;

  factory CoreResponseObject.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) jsonToT,
  ) =>
      _$CoreResponseObjectFromJson(json, jsonToT);
}
