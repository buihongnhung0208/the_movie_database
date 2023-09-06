import 'package:mg_api_service/extension/type_alias.dart';
import 'package:mg_api_service/helper/http_method.dart';
import 'package:the_movie_database/api_service/core/authentication/search-person/search_person_params.dart';
import 'package:the_movie_database/api_service/core/core_api_input.dart';

class SearchPersonAPIInput extends CoreAPIInput {
  SearchPersonAPIInput(this.params)
      : super(
          path: 'search/person',
          method: HTTPMethod.get,
          requireAccessToken: true,
        );

  final SearchPersonParams params;

  @override
  Parameters? get queryParameters => params.toJson();
}
