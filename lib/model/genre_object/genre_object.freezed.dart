// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genre_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenreObject _$GenreObjectFromJson(Map<String, dynamic> json) {
  return _GenreObject.fromJson(json);
}

/// @nodoc
mixin _$GenreObject {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenreObjectCopyWith<GenreObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenreObjectCopyWith<$Res> {
  factory $GenreObjectCopyWith(
          GenreObject value, $Res Function(GenreObject) then) =
      _$GenreObjectCopyWithImpl<$Res, GenreObject>;
  @useResult
  $Res call({@JsonKey(name: 'name') String name, @JsonKey(name: 'id') int id});
}

/// @nodoc
class _$GenreObjectCopyWithImpl<$Res, $Val extends GenreObject>
    implements $GenreObjectCopyWith<$Res> {
  _$GenreObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GenreObjectCopyWith<$Res>
    implements $GenreObjectCopyWith<$Res> {
  factory _$$_GenreObjectCopyWith(
          _$_GenreObject value, $Res Function(_$_GenreObject) then) =
      __$$_GenreObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'name') String name, @JsonKey(name: 'id') int id});
}

/// @nodoc
class __$$_GenreObjectCopyWithImpl<$Res>
    extends _$GenreObjectCopyWithImpl<$Res, _$_GenreObject>
    implements _$$_GenreObjectCopyWith<$Res> {
  __$$_GenreObjectCopyWithImpl(
      _$_GenreObject _value, $Res Function(_$_GenreObject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_$_GenreObject(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenreObject implements _GenreObject {
  const _$_GenreObject(
      {@JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'id') this.id = 1});

  factory _$_GenreObject.fromJson(Map<String, dynamic> json) =>
      _$$_GenreObjectFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'id')
  final int id;

  @override
  String toString() {
    return 'GenreObject(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenreObject &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenreObjectCopyWith<_$_GenreObject> get copyWith =>
      __$$_GenreObjectCopyWithImpl<_$_GenreObject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenreObjectToJson(
      this,
    );
  }
}

abstract class _GenreObject implements GenreObject {
  const factory _GenreObject(
      {@JsonKey(name: 'name') final String name,
      @JsonKey(name: 'id') final int id}) = _$_GenreObject;

  factory _GenreObject.fromJson(Map<String, dynamic> json) =
      _$_GenreObject.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_GenreObjectCopyWith<_$_GenreObject> get copyWith =>
      throw _privateConstructorUsedError;
}
