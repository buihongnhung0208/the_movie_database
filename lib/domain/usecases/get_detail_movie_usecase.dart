
import 'package:mg_api_service/mg_api_service.dart';
import 'package:the_movie_database/api_service/core/authentication/detail_movie_api_input.dart';
import 'package:the_movie_database/domain/repository/repository_type.dart';
import 'package:the_movie_database/domain/usecases/use_case.dart';
import 'package:the_movie_database/model/movie_response_object/movie_response_object.dart';

class GetDetailMovieUseCase
    implements
        UseCase<DetailMovieAPIInput, Result<MovieResponseObject, NetworkError>> {
  const GetDetailMovieUseCase(this._repository);
  final RepositoryType _repository;

  @override
  Future<Result<MovieResponseObject, NetworkError>> call(
      DetailMovieAPIInput input) =>
      _repository.getDetailMovie(input);
}