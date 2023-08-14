import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_movies_params.freezed.dart';
part 'list_movies_params.g.dart';

@freezed
class ListMoviesParams with _$ListMoviesParams {
  const factory ListMoviesParams({
    @JsonKey(name: 'language') @Default('en-US') String language,
    @JsonKey(name: 'page') @Default(1) int page,

  }) = _ListMoviesParams;

  factory ListMoviesParams.fromJson(Map<String, dynamic> json) =>
      _$ListMoviesParamsFromJson(json);
}
