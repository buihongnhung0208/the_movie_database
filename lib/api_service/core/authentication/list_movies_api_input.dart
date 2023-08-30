import 'package:mg_api_service/extension/type_alias.dart';
import 'package:mg_api_service/helper/http_method.dart';
import 'package:the_movie_database/api_service/core/core_api_input.dart';

import 'list-movies/list_movies_params.dart';

class ListMoviesAPIInput extends CoreAPIInput {
  ListMoviesAPIInput(this.params, this.url)
      : super(
          path: url,
          method: HTTPMethod.get,
          requireAccessToken: true,
        );

  final ListMoviesParams params;
  final String url;

  @override
  Parameters? get queryParameters => params.toJson();
}
