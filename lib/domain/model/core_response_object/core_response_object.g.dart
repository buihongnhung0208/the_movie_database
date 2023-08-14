// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_response_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoreResponseObject<T> _$CoreResponseObjectFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    CoreResponseObject<T>(
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
    );

Map<String, dynamic> _$CoreResponseObjectToJson<T>(
  CoreResponseObject<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'statusCode': instance.statusCode,
      'message': instance.message,
      'error': instance.error,
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
