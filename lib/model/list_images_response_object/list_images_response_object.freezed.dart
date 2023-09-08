// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_images_response_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListImagesResponseObject _$ListImagesResponseObjectFromJson(
    Map<String, dynamic> json) {
  return _ListImagesResponseObject.fromJson(json);
}

/// @nodoc
mixin _$ListImagesResponseObject {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'profiles')
  List<ImageResponseObject> get profiles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListImagesResponseObjectCopyWith<ListImagesResponseObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListImagesResponseObjectCopyWith<$Res> {
  factory $ListImagesResponseObjectCopyWith(ListImagesResponseObject value,
          $Res Function(ListImagesResponseObject) then) =
      _$ListImagesResponseObjectCopyWithImpl<$Res, ListImagesResponseObject>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'profiles') List<ImageResponseObject> profiles});
}

/// @nodoc
class _$ListImagesResponseObjectCopyWithImpl<$Res,
        $Val extends ListImagesResponseObject>
    implements $ListImagesResponseObjectCopyWith<$Res> {
  _$ListImagesResponseObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? profiles = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      profiles: null == profiles
          ? _value.profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<ImageResponseObject>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListImagesResponseObjectCopyWith<$Res>
    implements $ListImagesResponseObjectCopyWith<$Res> {
  factory _$$_ListImagesResponseObjectCopyWith(
          _$_ListImagesResponseObject value,
          $Res Function(_$_ListImagesResponseObject) then) =
      __$$_ListImagesResponseObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'profiles') List<ImageResponseObject> profiles});
}

/// @nodoc
class __$$_ListImagesResponseObjectCopyWithImpl<$Res>
    extends _$ListImagesResponseObjectCopyWithImpl<$Res,
        _$_ListImagesResponseObject>
    implements _$$_ListImagesResponseObjectCopyWith<$Res> {
  __$$_ListImagesResponseObjectCopyWithImpl(_$_ListImagesResponseObject _value,
      $Res Function(_$_ListImagesResponseObject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? profiles = null,
  }) {
    return _then(_$_ListImagesResponseObject(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      profiles: null == profiles
          ? _value._profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<ImageResponseObject>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListImagesResponseObject implements _ListImagesResponseObject {
  const _$_ListImagesResponseObject(
      {@JsonKey(name: 'id') this.id = 1,
      @JsonKey(name: 'profiles')
      final List<ImageResponseObject> profiles = const []})
      : _profiles = profiles;

  factory _$_ListImagesResponseObject.fromJson(Map<String, dynamic> json) =>
      _$$_ListImagesResponseObjectFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  final List<ImageResponseObject> _profiles;
  @override
  @JsonKey(name: 'profiles')
  List<ImageResponseObject> get profiles {
    if (_profiles is EqualUnmodifiableListView) return _profiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_profiles);
  }

  @override
  String toString() {
    return 'ListImagesResponseObject(id: $id, profiles: $profiles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListImagesResponseObject &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._profiles, _profiles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_profiles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListImagesResponseObjectCopyWith<_$_ListImagesResponseObject>
      get copyWith => __$$_ListImagesResponseObjectCopyWithImpl<
          _$_ListImagesResponseObject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListImagesResponseObjectToJson(
      this,
    );
  }
}

abstract class _ListImagesResponseObject implements ListImagesResponseObject {
  const factory _ListImagesResponseObject(
      {@JsonKey(name: 'id') final int id,
      @JsonKey(name: 'profiles')
      final List<ImageResponseObject> profiles}) = _$_ListImagesResponseObject;

  factory _ListImagesResponseObject.fromJson(Map<String, dynamic> json) =
      _$_ListImagesResponseObject.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'profiles')
  List<ImageResponseObject> get profiles;
  @override
  @JsonKey(ignore: true)
  _$$_ListImagesResponseObjectCopyWith<_$_ListImagesResponseObject>
      get copyWith => throw _privateConstructorUsedError;
}
