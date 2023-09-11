// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_response_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageResponseObject _$$_ImageResponseObjectFromJson(
        Map<String, dynamic> json) =>
    _$_ImageResponseObject(
      filePath: json['file_path'] as String? ?? '',
      width: json['width'] as int? ?? 0,
      height: json['height'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ImageResponseObjectToJson(
        _$_ImageResponseObject instance) =>
    <String, dynamic>{
      'file_path': instance.filePath,
      'width': instance.width,
      'height': instance.height,
    };
