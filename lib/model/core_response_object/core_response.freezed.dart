// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'core_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoreResponseObject<T> _$CoreResponseObjectFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _CoreResponseObject<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$CoreResponseObject<T> {
  int? get statusCode => throw _privateConstructorUsedError;
  T? get data => throw _privateConstructorUsedError;
  dynamic get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoreResponseObjectCopyWith<T, CoreResponseObject<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreResponseObjectCopyWith<T, $Res> {
  factory $CoreResponseObjectCopyWith(CoreResponseObject<T> value,
          $Res Function(CoreResponseObject<T>) then) =
      _$CoreResponseObjectCopyWithImpl<T, $Res, CoreResponseObject<T>>;
  @useResult
  $Res call({int? statusCode, T? data, dynamic message, String? error});
}

/// @nodoc
class _$CoreResponseObjectCopyWithImpl<T, $Res,
        $Val extends CoreResponseObject<T>>
    implements $CoreResponseObjectCopyWith<T, $Res> {
  _$CoreResponseObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? data = freezed,
    Object? message = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoreResponseObjectCopyWith<T, $Res>
    implements $CoreResponseObjectCopyWith<T, $Res> {
  factory _$$_CoreResponseObjectCopyWith(_$_CoreResponseObject<T> value,
          $Res Function(_$_CoreResponseObject<T>) then) =
      __$$_CoreResponseObjectCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int? statusCode, T? data, dynamic message, String? error});
}

/// @nodoc
class __$$_CoreResponseObjectCopyWithImpl<T, $Res>
    extends _$CoreResponseObjectCopyWithImpl<T, $Res, _$_CoreResponseObject<T>>
    implements _$$_CoreResponseObjectCopyWith<T, $Res> {
  __$$_CoreResponseObjectCopyWithImpl(_$_CoreResponseObject<T> _value,
      $Res Function(_$_CoreResponseObject<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? data = freezed,
    Object? message = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_CoreResponseObject<T>(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$_CoreResponseObject<T> implements _CoreResponseObject<T> {
  const _$_CoreResponseObject(
      {this.statusCode, this.data, this.message, this.error});

  factory _$_CoreResponseObject.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$_CoreResponseObjectFromJson(json, fromJsonT);

  @override
  final int? statusCode;
  @override
  final T? data;
  @override
  final dynamic message;
  @override
  final String? error;

  @override
  String toString() {
    return 'CoreResponseObject<$T>(statusCode: $statusCode, data: $data, message: $message, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoreResponseObject<T> &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      statusCode,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(message),
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoreResponseObjectCopyWith<T, _$_CoreResponseObject<T>> get copyWith =>
      __$$_CoreResponseObjectCopyWithImpl<T, _$_CoreResponseObject<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$_CoreResponseObjectToJson<T>(this, toJsonT);
  }
}

abstract class _CoreResponseObject<T> implements CoreResponseObject<T> {
  const factory _CoreResponseObject(
      {final int? statusCode,
      final T? data,
      final dynamic message,
      final String? error}) = _$_CoreResponseObject<T>;

  factory _CoreResponseObject.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$_CoreResponseObject<T>.fromJson;

  @override
  int? get statusCode;
  @override
  T? get data;
  @override
  dynamic get message;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_CoreResponseObjectCopyWith<T, _$_CoreResponseObject<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
