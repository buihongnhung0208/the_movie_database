import 'package:the_movie_database/data/wrappers/network_error.dart';
import 'package:the_movie_database/data/wrappers/result.dart';
import 'package:the_movie_database/domain/model/list_response_object/list_response_object.dart';
import 'package:the_movie_database/domain/params/list_movies_params.dart';

abstract class ManageRepositoryType {
  Future<Result<List<ListResponseObject>, NetworkError>> getListPopular(
      ListMoviesParams params);
}
