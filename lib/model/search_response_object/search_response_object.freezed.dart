// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_response_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResponseObject _$SearchResponseObjectFromJson(Map<String, dynamic> json) {
  return _SearchResponseObject.fromJson(json);
}

/// @nodoc
mixin _$SearchResponseObject {
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<PersonResponseObject> get results => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResponseObjectCopyWith<SearchResponseObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResponseObjectCopyWith<$Res> {
  factory $SearchResponseObjectCopyWith(SearchResponseObject value,
          $Res Function(SearchResponseObject) then) =
      _$SearchResponseObjectCopyWithImpl<$Res, SearchResponseObject>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'results') List<PersonResponseObject> results,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class _$SearchResponseObjectCopyWithImpl<$Res,
        $Val extends SearchResponseObject>
    implements $SearchResponseObjectCopyWith<$Res> {
  _$SearchResponseObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PersonResponseObject>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchResponseObjectCopyWith<$Res>
    implements $SearchResponseObjectCopyWith<$Res> {
  factory _$$_SearchResponseObjectCopyWith(_$_SearchResponseObject value,
          $Res Function(_$_SearchResponseObject) then) =
      __$$_SearchResponseObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'results') List<PersonResponseObject> results,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class __$$_SearchResponseObjectCopyWithImpl<$Res>
    extends _$SearchResponseObjectCopyWithImpl<$Res, _$_SearchResponseObject>
    implements _$$_SearchResponseObjectCopyWith<$Res> {
  __$$_SearchResponseObjectCopyWithImpl(_$_SearchResponseObject _value,
      $Res Function(_$_SearchResponseObject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_$_SearchResponseObject(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PersonResponseObject>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchResponseObject implements _SearchResponseObject {
  const _$_SearchResponseObject(
      {@JsonKey(name: 'page') this.page = 1,
      @JsonKey(name: 'results')
      final List<PersonResponseObject> results = const [],
      @JsonKey(name: 'total_pages') this.totalPages = 1,
      @JsonKey(name: 'total_results') this.totalResults = 1})
      : _results = results;

  factory _$_SearchResponseObject.fromJson(Map<String, dynamic> json) =>
      _$$_SearchResponseObjectFromJson(json);

  @override
  @JsonKey(name: 'page')
  final int page;
  final List<PersonResponseObject> _results;
  @override
  @JsonKey(name: 'results')
  List<PersonResponseObject> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int totalResults;

  @override
  String toString() {
    return 'SearchResponseObject(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchResponseObject &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page,
      const DeepCollectionEquality().hash(_results), totalPages, totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchResponseObjectCopyWith<_$_SearchResponseObject> get copyWith =>
      __$$_SearchResponseObjectCopyWithImpl<_$_SearchResponseObject>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchResponseObjectToJson(
      this,
    );
  }
}

abstract class _SearchResponseObject implements SearchResponseObject {
  const factory _SearchResponseObject(
          {@JsonKey(name: 'page') final int page,
          @JsonKey(name: 'results') final List<PersonResponseObject> results,
          @JsonKey(name: 'total_pages') final int totalPages,
          @JsonKey(name: 'total_results') final int totalResults}) =
      _$_SearchResponseObject;

  factory _SearchResponseObject.fromJson(Map<String, dynamic> json) =
      _$_SearchResponseObject.fromJson;

  @override
  @JsonKey(name: 'page')
  int get page;
  @override
  @JsonKey(name: 'results')
  List<PersonResponseObject> get results;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$_SearchResponseObjectCopyWith<_$_SearchResponseObject> get copyWith =>
      throw _privateConstructorUsedError;
}
