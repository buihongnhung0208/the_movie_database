
import 'package:mg_api_service/mg_api_service.dart';
import 'package:the_movie_database/api_service/core/authentication/list_movies_api_input.dart';
import 'package:the_movie_database/domain/repository/repository_type.dart';
import 'package:the_movie_database/domain/usecases/use_case.dart';
import 'package:the_movie_database/model/list_response_object/list_response_object.dart';

class GetListMoviesUseCase
    implements
        UseCase<ListMoviesAPIInput, Result<ListResponseObject, NetworkError>> {
  const GetListMoviesUseCase(this._repository);

  final RepositoryType _repository;

  @override
  Future<Result<ListResponseObject, NetworkError>> call(
      ListMoviesAPIInput input) =>
      _repository.getListMovies(input);
}