import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_movies_params.freezed.dart';

part 'list_movies_params.g.dart';

@freezed
class ListMoviesParams with _$ListMoviesParams {
  const ListMoviesParams._();

  const factory ListMoviesParams({
    @Default('en-US') String language,
    @Default(1) int page,
  }) = _ListMoviesParams;

  factory ListMoviesParams.fromJson(Map<String, dynamic> json) =>
      _$ListMoviesParamsFromJson(json);

  Map<String, dynamic> toDeepJson() => <String, dynamic>{
    'language': language,
    'page': page,
  };
}
