import 'package:mg_api_service/extension/type_alias.dart';
import 'package:mg_api_service/helper/http_method.dart';
import 'package:the_movie_database/api_service/core/core_api_input.dart';

import 'list-movies/list_movies_params.dart';

class ListMoviesAPIInput extends CoreAPIInput {
  ListMoviesAPIInput(this.params)
      : super(
          path: '/movie/popular',
          method: HTTPMethod.get,
          requireAccessToken: true,
        );

  final ListMoviesParams params;

  @override
  Parameters? get queryParameters => params.toJson();
}
