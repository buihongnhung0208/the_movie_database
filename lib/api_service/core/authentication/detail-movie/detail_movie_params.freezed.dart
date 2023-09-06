// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_movie_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailMovieParams _$DetailMovieParamsFromJson(Map<String, dynamic> json) {
  return _DetailMovieParams.fromJson(json);
}

/// @nodoc
mixin _$DetailMovieParams {
  String get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailMovieParamsCopyWith<DetailMovieParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailMovieParamsCopyWith<$Res> {
  factory $DetailMovieParamsCopyWith(
          DetailMovieParams value, $Res Function(DetailMovieParams) then) =
      _$DetailMovieParamsCopyWithImpl<$Res, DetailMovieParams>;
  @useResult
  $Res call({String language});
}

/// @nodoc
class _$DetailMovieParamsCopyWithImpl<$Res, $Val extends DetailMovieParams>
    implements $DetailMovieParamsCopyWith<$Res> {
  _$DetailMovieParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailMovieParamsCopyWith<$Res>
    implements $DetailMovieParamsCopyWith<$Res> {
  factory _$$_DetailMovieParamsCopyWith(_$_DetailMovieParams value,
          $Res Function(_$_DetailMovieParams) then) =
      __$$_DetailMovieParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String language});
}

/// @nodoc
class __$$_DetailMovieParamsCopyWithImpl<$Res>
    extends _$DetailMovieParamsCopyWithImpl<$Res, _$_DetailMovieParams>
    implements _$$_DetailMovieParamsCopyWith<$Res> {
  __$$_DetailMovieParamsCopyWithImpl(
      _$_DetailMovieParams _value, $Res Function(_$_DetailMovieParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
  }) {
    return _then(_$_DetailMovieParams(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailMovieParams extends _DetailMovieParams {
  const _$_DetailMovieParams({this.language = 'en-US'}) : super._();

  factory _$_DetailMovieParams.fromJson(Map<String, dynamic> json) =>
      _$$_DetailMovieParamsFromJson(json);

  @override
  @JsonKey()
  final String language;

  @override
  String toString() {
    return 'DetailMovieParams(language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailMovieParams &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailMovieParamsCopyWith<_$_DetailMovieParams> get copyWith =>
      __$$_DetailMovieParamsCopyWithImpl<_$_DetailMovieParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailMovieParamsToJson(
      this,
    );
  }
}

abstract class _DetailMovieParams extends DetailMovieParams {
  const factory _DetailMovieParams({final String language}) =
      _$_DetailMovieParams;
  const _DetailMovieParams._() : super._();

  factory _DetailMovieParams.fromJson(Map<String, dynamic> json) =
      _$_DetailMovieParams.fromJson;

  @override
  String get language;
  @override
  @JsonKey(ignore: true)
  _$$_DetailMovieParamsCopyWith<_$_DetailMovieParams> get copyWith =>
      throw _privateConstructorUsedError;
}
