// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_movies_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListMoviesParams _$ListMoviesParamsFromJson(Map<String, dynamic> json) {
  return _ListMoviesParams.fromJson(json);
}

/// @nodoc
mixin _$ListMoviesParams {
  @JsonKey(name: 'language')
  String get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListMoviesParamsCopyWith<ListMoviesParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListMoviesParamsCopyWith<$Res> {
  factory $ListMoviesParamsCopyWith(
          ListMoviesParams value, $Res Function(ListMoviesParams) then) =
      _$ListMoviesParamsCopyWithImpl<$Res, ListMoviesParams>;
  @useResult
  $Res call(
      {@JsonKey(name: 'language') String language,
      @JsonKey(name: 'page') int page});
}

/// @nodoc
class _$ListMoviesParamsCopyWithImpl<$Res, $Val extends ListMoviesParams>
    implements $ListMoviesParamsCopyWith<$Res> {
  _$ListMoviesParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListMoviesParamsCopyWith<$Res>
    implements $ListMoviesParamsCopyWith<$Res> {
  factory _$$_ListMoviesParamsCopyWith(
          _$_ListMoviesParams value, $Res Function(_$_ListMoviesParams) then) =
      __$$_ListMoviesParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'language') String language,
      @JsonKey(name: 'page') int page});
}

/// @nodoc
class __$$_ListMoviesParamsCopyWithImpl<$Res>
    extends _$ListMoviesParamsCopyWithImpl<$Res, _$_ListMoviesParams>
    implements _$$_ListMoviesParamsCopyWith<$Res> {
  __$$_ListMoviesParamsCopyWithImpl(
      _$_ListMoviesParams _value, $Res Function(_$_ListMoviesParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? page = null,
  }) {
    return _then(_$_ListMoviesParams(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListMoviesParams implements _ListMoviesParams {
  const _$_ListMoviesParams(
      {@JsonKey(name: 'language') this.language = 'en-US',
      @JsonKey(name: 'page') this.page = 1});

  factory _$_ListMoviesParams.fromJson(Map<String, dynamic> json) =>
      _$$_ListMoviesParamsFromJson(json);

  @override
  @JsonKey(name: 'language')
  final String language;
  @override
  @JsonKey(name: 'page')
  final int page;

  @override
  String toString() {
    return 'ListMoviesParams(language: $language, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListMoviesParams &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, language, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListMoviesParamsCopyWith<_$_ListMoviesParams> get copyWith =>
      __$$_ListMoviesParamsCopyWithImpl<_$_ListMoviesParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListMoviesParamsToJson(
      this,
    );
  }
}

abstract class _ListMoviesParams implements ListMoviesParams {
  const factory _ListMoviesParams(
      {@JsonKey(name: 'language') final String language,
      @JsonKey(name: 'page') final int page}) = _$_ListMoviesParams;

  factory _ListMoviesParams.fromJson(Map<String, dynamic> json) =
      _$_ListMoviesParams.fromJson;

  @override
  @JsonKey(name: 'language')
  String get language;
  @override
  @JsonKey(name: 'page')
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$_ListMoviesParamsCopyWith<_$_ListMoviesParams> get copyWith =>
      throw _privateConstructorUsedError;
}
