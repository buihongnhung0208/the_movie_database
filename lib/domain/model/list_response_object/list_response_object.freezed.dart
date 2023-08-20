// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_response_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListResponseObject _$ListResponseObjectFromJson(Map<String, dynamic> json) {
  return _ListResponseObject.fromJson(json);
}

/// @nodoc
mixin _$ListResponseObject {
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<MovieResponseObject> get results => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListResponseObjectCopyWith<ListResponseObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListResponseObjectCopyWith<$Res> {
  factory $ListResponseObjectCopyWith(
          ListResponseObject value, $Res Function(ListResponseObject) then) =
      _$ListResponseObjectCopyWithImpl<$Res, ListResponseObject>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'results') List<MovieResponseObject> results,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class _$ListResponseObjectCopyWithImpl<$Res, $Val extends ListResponseObject>
    implements $ListResponseObjectCopyWith<$Res> {
  _$ListResponseObjectCopyWithImpl(this._value, this._then);

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
              as List<MovieResponseObject>,
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
abstract class _$$_ListResponseObjectCopyWith<$Res>
    implements $ListResponseObjectCopyWith<$Res> {
  factory _$$_ListResponseObjectCopyWith(_$_ListResponseObject value,
          $Res Function(_$_ListResponseObject) then) =
      __$$_ListResponseObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'results') List<MovieResponseObject> results,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class __$$_ListResponseObjectCopyWithImpl<$Res>
    extends _$ListResponseObjectCopyWithImpl<$Res, _$_ListResponseObject>
    implements _$$_ListResponseObjectCopyWith<$Res> {
  __$$_ListResponseObjectCopyWithImpl(
      _$_ListResponseObject _value, $Res Function(_$_ListResponseObject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_$_ListResponseObject(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieResponseObject>,
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
class _$_ListResponseObject implements _ListResponseObject {
  const _$_ListResponseObject(
      {@JsonKey(name: 'page') this.page = 1,
      @JsonKey(name: 'results')
      final List<MovieResponseObject> results = const [],
      @JsonKey(name: 'total_pages') this.totalPages = 1,
      @JsonKey(name: 'total_results') this.totalResults = 1})
      : _results = results;

  factory _$_ListResponseObject.fromJson(Map<String, dynamic> json) =>
      _$$_ListResponseObjectFromJson(json);

  @override
  @JsonKey(name: 'page')
  final int page;
  final List<MovieResponseObject> _results;
  @override
  @JsonKey(name: 'results')
  List<MovieResponseObject> get results {
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
    return 'ListResponseObject(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListResponseObject &&
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
  _$$_ListResponseObjectCopyWith<_$_ListResponseObject> get copyWith =>
      __$$_ListResponseObjectCopyWithImpl<_$_ListResponseObject>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListResponseObjectToJson(
      this,
    );
  }
}

abstract class _ListResponseObject implements ListResponseObject {
  const factory _ListResponseObject(
          {@JsonKey(name: 'page') final int page,
          @JsonKey(name: 'results') final List<MovieResponseObject> results,
          @JsonKey(name: 'total_pages') final int totalPages,
          @JsonKey(name: 'total_results') final int totalResults}) =
      _$_ListResponseObject;

  factory _ListResponseObject.fromJson(Map<String, dynamic> json) =
      _$_ListResponseObject.fromJson;

  @override
  @JsonKey(name: 'page')
  int get page;
  @override
  @JsonKey(name: 'results')
  List<MovieResponseObject> get results;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$_ListResponseObjectCopyWith<_$_ListResponseObject> get copyWith =>
      throw _privateConstructorUsedError;
}
