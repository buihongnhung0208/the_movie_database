// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_images_response_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListImagesResponseObject _$$_ListImagesResponseObjectFromJson(
        Map<String, dynamic> json) =>
    _$_ListImagesResponseObject(
      id: json['id'] as int? ?? 1,
      profiles: (json['profiles'] as List<dynamic>?)
              ?.map((e) =>
                  ImageResponseObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ListImagesResponseObjectToJson(
        _$_ListImagesResponseObject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profiles': instance.profiles,
    };
