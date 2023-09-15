import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_movie_params.freezed.dart';

part 'detail_movie_params.g.dart';

@freezed
class DetailMovieParams with _$DetailMovieParams {
  const DetailMovieParams._();

  const factory DetailMovieParams({
    @Default('en-US') String language,
  }) = _DetailMovieParams;

  factory DetailMovieParams.fromJson(Map<String, dynamic> json) => _$DetailMovieParamsFromJson(json);

  Map<String, dynamic> toDeepJson() => <String, dynamic>{
        'language': language,
      };
}
