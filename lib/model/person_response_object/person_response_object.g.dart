// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_response_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonResponseObject _$$_PersonResponseObjectFromJson(
        Map<String, dynamic> json) =>
    _$_PersonResponseObject(
      adult: json['adult'] as bool? ?? false,
      gender: json['gender'] as int? ?? 1,
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? "",
      originalName: json['original_name'] as String? ?? "",
      profilePath: json['profile_path'] as String? ?? "",
      biography: json['biography'] as String? ?? "",
      knownFor: (json['known_for'] as List<dynamic>?)
              ?.map((e) =>
                  MovieResponseObject.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PersonResponseObjectToJson(
        _$_PersonResponseObject instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'gender': instance.gender,
      'id': instance.id,
      'name': instance.name,
      'original_name': instance.originalName,
      'profile_path': instance.profilePath,
      'biography': instance.biography,
      'known_for': instance.knownFor,
    };
