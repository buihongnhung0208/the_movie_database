// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_response_object.dart';

// **************************************************************************
// D3FBaseResponseJsonToTGenerator
// **************************************************************************

DataResponseObject? jsonToNullableDataResponseObject(Object? json) =>
    DataResponseObject.fromJson(json as Map<String, dynamic>);

DataResponseObject jsonToDataResponseObject(Object? json) =>
    DataResponseObject.fromJson(json as Map<String, dynamic>);

List<DataResponseObject?> jsonToListNullableDataResponseObjects(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => DataResponseObject.fromJson(e as Map<String, dynamic>))
        .toList();

List<DataResponseObject> jsonToListDataResponseObjects(Object? json) =>
    List<Object>.from(json as List)
        .map((e) => DataResponseObject.fromJson(e as Map<String, dynamic>))
        .toList();

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataResponseObject _$$_DataResponseObjectFromJson(Map<String, dynamic> json) =>
    _$_DataResponseObject(
      encryptedData: json['encryptedData'] as String? ?? '',
      signature: json['signature'] as String? ?? '',
    );

Map<String, dynamic> _$$_DataResponseObjectToJson(_$_DataResponseObject instance) =>
    <String, dynamic>{
      'encryptedData': instance.encryptedData,
      'signature': instance.signature,
    };
