// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_person_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchPersonParams _$SearchPersonParamsFromJson(Map<String, dynamic> json) {
  return _SearchPersonParams.fromJson(json);
}

/// @nodoc
mixin _$SearchPersonParams {
  String get language => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  bool get include_adult => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchPersonParamsCopyWith<SearchPersonParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPersonParamsCopyWith<$Res> {
  factory $SearchPersonParamsCopyWith(
          SearchPersonParams value, $Res Function(SearchPersonParams) then) =
      _$SearchPersonParamsCopyWithImpl<$Res, SearchPersonParams>;
  @useResult
  $Res call({String language, String query, bool include_adult, int page});
}

/// @nodoc
class _$SearchPersonParamsCopyWithImpl<$Res, $Val extends SearchPersonParams>
    implements $SearchPersonParamsCopyWith<$Res> {
  _$SearchPersonParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? query = null,
    Object? include_adult = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      include_adult: null == include_adult
          ? _value.include_adult
          : include_adult // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchPersonParamsCopyWith<$Res>
    implements $SearchPersonParamsCopyWith<$Res> {
  factory _$$_SearchPersonParamsCopyWith(_$_SearchPersonParams value,
          $Res Function(_$_SearchPersonParams) then) =
      __$$_SearchPersonParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String language, String query, bool include_adult, int page});
}

/// @nodoc
class __$$_SearchPersonParamsCopyWithImpl<$Res>
    extends _$SearchPersonParamsCopyWithImpl<$Res, _$_SearchPersonParams>
    implements _$$_SearchPersonParamsCopyWith<$Res> {
  __$$_SearchPersonParamsCopyWithImpl(
      _$_SearchPersonParams _value, $Res Function(_$_SearchPersonParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? query = null,
    Object? include_adult = null,
    Object? page = null,
  }) {
    return _then(_$_SearchPersonParams(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      include_adult: null == include_adult
          ? _value.include_adult
          : include_adult // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchPersonParams extends _SearchPersonParams {
  const _$_SearchPersonParams(
      {this.language = 'en-US',
      this.query = '',
      this.include_adult = false,
      this.page = 1})
      : super._();

  factory _$_SearchPersonParams.fromJson(Map<String, dynamic> json) =>
      _$$_SearchPersonParamsFromJson(json);

  @override
  @JsonKey()
  final String language;
  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final bool include_adult;
  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'SearchPersonParams(language: $language, query: $query, include_adult: $include_adult, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchPersonParams &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.include_adult, include_adult) ||
                other.include_adult == include_adult) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, language, query, include_adult, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchPersonParamsCopyWith<_$_SearchPersonParams> get copyWith =>
      __$$_SearchPersonParamsCopyWithImpl<_$_SearchPersonParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchPersonParamsToJson(
      this,
    );
  }
}

abstract class _SearchPersonParams extends SearchPersonParams {
  const factory _SearchPersonParams(
      {final String language,
      final String query,
      final bool include_adult,
      final int page}) = _$_SearchPersonParams;
  const _SearchPersonParams._() : super._();

  factory _SearchPersonParams.fromJson(Map<String, dynamic> json) =
      _$_SearchPersonParams.fromJson;

  @override
  String get language;
  @override
  String get query;
  @override
  bool get include_adult;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$_SearchPersonParamsCopyWith<_$_SearchPersonParams> get copyWith =>
      throw _privateConstructorUsedError;
}
