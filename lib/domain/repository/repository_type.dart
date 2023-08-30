import 'package:mg_api_service/mg_api_service.dart';
import 'package:the_movie_database/api_service/core/authentication/list_movies_api_input.dart';
import 'package:the_movie_database/model/list_response_object/list_response_object.dart';

abstract class RepositoryType {
  Future<Result<ListResponseObject, NetworkError>> getListMovies(ListMoviesAPIInput input);

}