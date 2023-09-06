// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_response_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonResponseObject _$PersonResponseObjectFromJson(Map<String, dynamic> json) {
  return _PersonResponseObject.fromJson(json);
}

/// @nodoc
mixin _$PersonResponseObject {
  @JsonKey(name: 'adult')
  bool get adult => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  int get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_name')
  String get originalName => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_path')
  String get profilePath => throw _privateConstructorUsedError;
  @JsonKey(name: 'known_for')
  List<MovieResponseObject> get knownFor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonResponseObjectCopyWith<PersonResponseObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonResponseObjectCopyWith<$Res> {
  factory $PersonResponseObjectCopyWith(PersonResponseObject value,
          $Res Function(PersonResponseObject) then) =
      _$PersonResponseObjectCopyWithImpl<$Res, PersonResponseObject>;
  @useResult
  $Res call(
      {@JsonKey(name: 'adult') bool adult,
      @JsonKey(name: 'gender') int gender,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'original_name') String originalName,
      @JsonKey(name: 'profile_path') String profilePath,
      @JsonKey(name: 'known_for') List<MovieResponseObject> knownFor});
}

/// @nodoc
class _$PersonResponseObjectCopyWithImpl<$Res,
        $Val extends PersonResponseObject>
    implements $PersonResponseObjectCopyWith<$Res> {
  _$PersonResponseObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? gender = null,
    Object? id = null,
    Object? name = null,
    Object? originalName = null,
    Object? profilePath = null,
    Object? knownFor = null,
  }) {
    return _then(_value.copyWith(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: null == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      profilePath: null == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String,
      knownFor: null == knownFor
          ? _value.knownFor
          : knownFor // ignore: cast_nullable_to_non_nullable
              as List<MovieResponseObject>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersonResponseObjectCopyWith<$Res>
    implements $PersonResponseObjectCopyWith<$Res> {
  factory _$$_PersonResponseObjectCopyWith(_$_PersonResponseObject value,
          $Res Function(_$_PersonResponseObject) then) =
      __$$_PersonResponseObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'adult') bool adult,
      @JsonKey(name: 'gender') int gender,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'original_name') String originalName,
      @JsonKey(name: 'profile_path') String profilePath,
      @JsonKey(name: 'known_for') List<MovieResponseObject> knownFor});
}

/// @nodoc
class __$$_PersonResponseObjectCopyWithImpl<$Res>
    extends _$PersonResponseObjectCopyWithImpl<$Res, _$_PersonResponseObject>
    implements _$$_PersonResponseObjectCopyWith<$Res> {
  __$$_PersonResponseObjectCopyWithImpl(_$_PersonResponseObject _value,
      $Res Function(_$_PersonResponseObject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? gender = null,
    Object? id = null,
    Object? name = null,
    Object? originalName = null,
    Object? profilePath = null,
    Object? knownFor = null,
  }) {
    return _then(_$_PersonResponseObject(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: null == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      profilePath: null == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String,
      knownFor: null == knownFor
          ? _value._knownFor
          : knownFor // ignore: cast_nullable_to_non_nullable
              as List<MovieResponseObject>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonResponseObject implements _PersonResponseObject {
  const _$_PersonResponseObject(
      {@JsonKey(name: 'adult') this.adult = false,
      @JsonKey(name: 'gender') this.gender = 1,
      @JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'name') this.name = "",
      @JsonKey(name: 'original_name') this.originalName = "",
      @JsonKey(name: 'profile_path') this.profilePath = "",
      @JsonKey(name: 'known_for')
      final List<MovieResponseObject> knownFor = const []})
      : _knownFor = knownFor;

  factory _$_PersonResponseObject.fromJson(Map<String, dynamic> json) =>
      _$$_PersonResponseObjectFromJson(json);

  @override
  @JsonKey(name: 'adult')
  final bool adult;
  @override
  @JsonKey(name: 'gender')
  final int gender;
  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'original_name')
  final String originalName;
  @override
  @JsonKey(name: 'profile_path')
  final String profilePath;
  final List<MovieResponseObject> _knownFor;
  @override
  @JsonKey(name: 'known_for')
  List<MovieResponseObject> get knownFor {
    if (_knownFor is EqualUnmodifiableListView) return _knownFor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_knownFor);
  }

  @override
  String toString() {
    return 'PersonResponseObject(adult: $adult, gender: $gender, id: $id, name: $name, originalName: $originalName, profilePath: $profilePath, knownFor: $knownFor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonResponseObject &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.profilePath, profilePath) ||
                other.profilePath == profilePath) &&
            const DeepCollectionEquality().equals(other._knownFor, _knownFor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      adult,
      gender,
      id,
      name,
      originalName,
      profilePath,
      const DeepCollectionEquality().hash(_knownFor));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonResponseObjectCopyWith<_$_PersonResponseObject> get copyWith =>
      __$$_PersonResponseObjectCopyWithImpl<_$_PersonResponseObject>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonResponseObjectToJson(
      this,
    );
  }
}

abstract class _PersonResponseObject implements PersonResponseObject {
  const factory _PersonResponseObject(
      {@JsonKey(name: 'adult') final bool adult,
      @JsonKey(name: 'gender') final int gender,
      @JsonKey(name: 'id') final int id,
      @JsonKey(name: 'name') final String name,
      @JsonKey(name: 'original_name') final String originalName,
      @JsonKey(name: 'profile_path') final String profilePath,
      @JsonKey(name: 'known_for')
      final List<MovieResponseObject> knownFor}) = _$_PersonResponseObject;

  factory _PersonResponseObject.fromJson(Map<String, dynamic> json) =
      _$_PersonResponseObject.fromJson;

  @override
  @JsonKey(name: 'adult')
  bool get adult;
  @override
  @JsonKey(name: 'gender')
  int get gender;
  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'original_name')
  String get originalName;
  @override
  @JsonKey(name: 'profile_path')
  String get profilePath;
  @override
  @JsonKey(name: 'known_for')
  List<MovieResponseObject> get knownFor;
  @override
  @JsonKey(ignore: true)
  _$$_PersonResponseObjectCopyWith<_$_PersonResponseObject> get copyWith =>
      throw _privateConstructorUsedError;
}
