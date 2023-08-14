// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) dio,
    required TResult Function(String? code, String? error) request,
    required TResult Function(String? error) type,
    required TResult Function(String? message) connectivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError error)? dio,
    TResult? Function(String? code, String? error)? request,
    TResult? Function(String? error)? type,
    TResult? Function(String? message)? connectivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? dio,
    TResult Function(String? code, String? error)? request,
    TResult Function(String? error)? type,
    TResult Function(String? message)? connectivity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DioError value) dio,
    required TResult Function(_RequestError value) request,
    required TResult Function(_TypeError value) type,
    required TResult Function(_ConnectivityError value) connectivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DioError value)? dio,
    TResult? Function(_RequestError value)? request,
    TResult? Function(_TypeError value)? type,
    TResult? Function(_ConnectivityError value)? connectivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DioError value)? dio,
    TResult Function(_RequestError value)? request,
    TResult Function(_TypeError value)? type,
    TResult Function(_ConnectivityError value)? connectivity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkErrorCopyWith<$Res> {
  factory $NetworkErrorCopyWith(
          NetworkError value, $Res Function(NetworkError) then) =
      _$NetworkErrorCopyWithImpl<$Res, NetworkError>;
}

/// @nodoc
class _$NetworkErrorCopyWithImpl<$Res, $Val extends NetworkError>
    implements $NetworkErrorCopyWith<$Res> {
  _$NetworkErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DioErrorCopyWith<$Res> {
  factory _$$_DioErrorCopyWith(
          _$_DioError value, $Res Function(_$_DioError) then) =
      __$$_DioErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({DioError error});
}

/// @nodoc
class __$$_DioErrorCopyWithImpl<$Res>
    extends _$NetworkErrorCopyWithImpl<$Res, _$_DioError>
    implements _$$_DioErrorCopyWith<$Res> {
  __$$_DioErrorCopyWithImpl(
      _$_DioError _value, $Res Function(_$_DioError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_DioError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioError,
    ));
  }
}

/// @nodoc

class _$_DioError extends _DioError {
  const _$_DioError({required this.error}) : super._();

  @override
  final DioError error;

  @override
  String toString() {
    return 'NetworkError.dio(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DioError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DioErrorCopyWith<_$_DioError> get copyWith =>
      __$$_DioErrorCopyWithImpl<_$_DioError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) dio,
    required TResult Function(String? code, String? error) request,
    required TResult Function(String? error) type,
    required TResult Function(String? message) connectivity,
  }) {
    return dio(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError error)? dio,
    TResult? Function(String? code, String? error)? request,
    TResult? Function(String? error)? type,
    TResult? Function(String? message)? connectivity,
  }) {
    return dio?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? dio,
    TResult Function(String? code, String? error)? request,
    TResult Function(String? error)? type,
    TResult Function(String? message)? connectivity,
    required TResult orElse(),
  }) {
    if (dio != null) {
      return dio(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DioError value) dio,
    required TResult Function(_RequestError value) request,
    required TResult Function(_TypeError value) type,
    required TResult Function(_ConnectivityError value) connectivity,
  }) {
    return dio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DioError value)? dio,
    TResult? Function(_RequestError value)? request,
    TResult? Function(_TypeError value)? type,
    TResult? Function(_ConnectivityError value)? connectivity,
  }) {
    return dio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DioError value)? dio,
    TResult Function(_RequestError value)? request,
    TResult Function(_TypeError value)? type,
    TResult Function(_ConnectivityError value)? connectivity,
    required TResult orElse(),
  }) {
    if (dio != null) {
      return dio(this);
    }
    return orElse();
  }
}

abstract class _DioError extends NetworkError {
  const factory _DioError({required final DioError error}) = _$_DioError;
  const _DioError._() : super._();

  DioError get error;
  @JsonKey(ignore: true)
  _$$_DioErrorCopyWith<_$_DioError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RequestErrorCopyWith<$Res> {
  factory _$$_RequestErrorCopyWith(
          _$_RequestError value, $Res Function(_$_RequestError) then) =
      __$$_RequestErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? code, String? error});
}

/// @nodoc
class __$$_RequestErrorCopyWithImpl<$Res>
    extends _$NetworkErrorCopyWithImpl<$Res, _$_RequestError>
    implements _$$_RequestErrorCopyWith<$Res> {
  __$$_RequestErrorCopyWithImpl(
      _$_RequestError _value, $Res Function(_$_RequestError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_RequestError(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RequestError extends _RequestError {
  const _$_RequestError({this.code, this.error}) : super._();

  @override
  final String? code;
  @override
  final String? error;

  @override
  String toString() {
    return 'NetworkError.request(code: $code, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestError &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestErrorCopyWith<_$_RequestError> get copyWith =>
      __$$_RequestErrorCopyWithImpl<_$_RequestError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) dio,
    required TResult Function(String? code, String? error) request,
    required TResult Function(String? error) type,
    required TResult Function(String? message) connectivity,
  }) {
    return request(code, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError error)? dio,
    TResult? Function(String? code, String? error)? request,
    TResult? Function(String? error)? type,
    TResult? Function(String? message)? connectivity,
  }) {
    return request?.call(code, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? dio,
    TResult Function(String? code, String? error)? request,
    TResult Function(String? error)? type,
    TResult Function(String? message)? connectivity,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(code, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DioError value) dio,
    required TResult Function(_RequestError value) request,
    required TResult Function(_TypeError value) type,
    required TResult Function(_ConnectivityError value) connectivity,
  }) {
    return request(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DioError value)? dio,
    TResult? Function(_RequestError value)? request,
    TResult? Function(_TypeError value)? type,
    TResult? Function(_ConnectivityError value)? connectivity,
  }) {
    return request?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DioError value)? dio,
    TResult Function(_RequestError value)? request,
    TResult Function(_TypeError value)? type,
    TResult Function(_ConnectivityError value)? connectivity,
    required TResult orElse(),
  }) {
    if (request != null) {
      return request(this);
    }
    return orElse();
  }
}

abstract class _RequestError extends NetworkError {
  const factory _RequestError({final String? code, final String? error}) =
      _$_RequestError;
  const _RequestError._() : super._();

  String? get code;
  String? get error;
  @JsonKey(ignore: true)
  _$$_RequestErrorCopyWith<_$_RequestError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TypeErrorCopyWith<$Res> {
  factory _$$_TypeErrorCopyWith(
          _$_TypeError value, $Res Function(_$_TypeError) then) =
      __$$_TypeErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$_TypeErrorCopyWithImpl<$Res>
    extends _$NetworkErrorCopyWithImpl<$Res, _$_TypeError>
    implements _$$_TypeErrorCopyWith<$Res> {
  __$$_TypeErrorCopyWithImpl(
      _$_TypeError _value, $Res Function(_$_TypeError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_TypeError(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TypeError extends _TypeError {
  const _$_TypeError({this.error}) : super._();

  @override
  final String? error;

  @override
  String toString() {
    return 'NetworkError.type(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TypeError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TypeErrorCopyWith<_$_TypeError> get copyWith =>
      __$$_TypeErrorCopyWithImpl<_$_TypeError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) dio,
    required TResult Function(String? code, String? error) request,
    required TResult Function(String? error) type,
    required TResult Function(String? message) connectivity,
  }) {
    return type(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError error)? dio,
    TResult? Function(String? code, String? error)? request,
    TResult? Function(String? error)? type,
    TResult? Function(String? message)? connectivity,
  }) {
    return type?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? dio,
    TResult Function(String? code, String? error)? request,
    TResult Function(String? error)? type,
    TResult Function(String? message)? connectivity,
    required TResult orElse(),
  }) {
    if (type != null) {
      return type(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DioError value) dio,
    required TResult Function(_RequestError value) request,
    required TResult Function(_TypeError value) type,
    required TResult Function(_ConnectivityError value) connectivity,
  }) {
    return type(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DioError value)? dio,
    TResult? Function(_RequestError value)? request,
    TResult? Function(_TypeError value)? type,
    TResult? Function(_ConnectivityError value)? connectivity,
  }) {
    return type?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DioError value)? dio,
    TResult Function(_RequestError value)? request,
    TResult Function(_TypeError value)? type,
    TResult Function(_ConnectivityError value)? connectivity,
    required TResult orElse(),
  }) {
    if (type != null) {
      return type(this);
    }
    return orElse();
  }
}

abstract class _TypeError extends NetworkError {
  const factory _TypeError({final String? error}) = _$_TypeError;
  const _TypeError._() : super._();

  String? get error;
  @JsonKey(ignore: true)
  _$$_TypeErrorCopyWith<_$_TypeError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ConnectivityErrorCopyWith<$Res> {
  factory _$$_ConnectivityErrorCopyWith(_$_ConnectivityError value,
          $Res Function(_$_ConnectivityError) then) =
      __$$_ConnectivityErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_ConnectivityErrorCopyWithImpl<$Res>
    extends _$NetworkErrorCopyWithImpl<$Res, _$_ConnectivityError>
    implements _$$_ConnectivityErrorCopyWith<$Res> {
  __$$_ConnectivityErrorCopyWithImpl(
      _$_ConnectivityError _value, $Res Function(_$_ConnectivityError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ConnectivityError(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ConnectivityError extends _ConnectivityError {
  const _$_ConnectivityError({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'NetworkError.connectivity(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConnectivityError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConnectivityErrorCopyWith<_$_ConnectivityError> get copyWith =>
      __$$_ConnectivityErrorCopyWithImpl<_$_ConnectivityError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DioError error) dio,
    required TResult Function(String? code, String? error) request,
    required TResult Function(String? error) type,
    required TResult Function(String? message) connectivity,
  }) {
    return connectivity(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DioError error)? dio,
    TResult? Function(String? code, String? error)? request,
    TResult? Function(String? error)? type,
    TResult? Function(String? message)? connectivity,
  }) {
    return connectivity?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DioError error)? dio,
    TResult Function(String? code, String? error)? request,
    TResult Function(String? error)? type,
    TResult Function(String? message)? connectivity,
    required TResult orElse(),
  }) {
    if (connectivity != null) {
      return connectivity(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DioError value) dio,
    required TResult Function(_RequestError value) request,
    required TResult Function(_TypeError value) type,
    required TResult Function(_ConnectivityError value) connectivity,
  }) {
    return connectivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DioError value)? dio,
    TResult? Function(_RequestError value)? request,
    TResult? Function(_TypeError value)? type,
    TResult? Function(_ConnectivityError value)? connectivity,
  }) {
    return connectivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DioError value)? dio,
    TResult Function(_RequestError value)? request,
    TResult Function(_TypeError value)? type,
    TResult Function(_ConnectivityError value)? connectivity,
    required TResult orElse(),
  }) {
    if (connectivity != null) {
      return connectivity(this);
    }
    return orElse();
  }
}

abstract class _ConnectivityError extends NetworkError {
  const factory _ConnectivityError({final String? message}) =
      _$_ConnectivityError;
  const _ConnectivityError._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$_ConnectivityErrorCopyWith<_$_ConnectivityError> get copyWith =>
      throw _privateConstructorUsedError;
}
