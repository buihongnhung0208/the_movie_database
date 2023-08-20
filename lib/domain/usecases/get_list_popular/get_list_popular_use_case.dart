import 'package:the_movie_database/data/wrappers/network_error.dart';
import 'package:the_movie_database/data/wrappers/result.dart';
import 'package:the_movie_database/domain/model/list_response_object/list_response_object.dart';
import 'package:the_movie_database/domain/params/list_movies_params.dart';
import 'package:the_movie_database/domain/repository/manage_repository_type.dart';
import 'package:the_movie_database/domain/usecases/use_case.dart';

class GetListPopularUserCase
    implements UseCase<ListMoviesParams, Result<List<ListResponseObject>, NetworkError>> {
  const GetListPopularUserCase(this._repository);

  final ManageRepositoryType _repository;

  @override
  Future<Result<List<ListResponseObject>, NetworkError>> call(ListMoviesParams params) =>
      _repository.getListPopular(params);
}
