import 'package:mg_api_service/extension/type_alias.dart';
import 'package:mg_api_service/helper/http_method.dart';
import 'package:the_movie_database/api_service/core/authentication/detail-movie/detail_movie_params.dart';
import 'package:the_movie_database/api_service/core/core_api_input.dart';

class DetailMovieAPIInput extends CoreAPIInput {
  DetailMovieAPIInput(this.params, this.id)
      : super(
          path: 'movie/$id',
          method: HTTPMethod.get,
          requireAccessToken: true,
        );

  final DetailMovieParams params;
  final String id;

  @override
  Parameters? get queryParameters => params.toJson();
}
