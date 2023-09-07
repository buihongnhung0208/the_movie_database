
import 'package:mg_api_service/mg_api_service.dart';
import 'package:the_movie_database/api_service/core/authentication/detail_movie_api_input.dart';
import 'package:the_movie_database/domain/repository/repository_type.dart';
import 'package:the_movie_database/domain/usecases/use_case.dart';
import 'package:the_movie_database/model/person_response_object/person_response_object.dart';

class GetDetailCastUseCase
    implements
        UseCase<DetailAPIInput, Result<PersonResponseObject, NetworkError>> {
  const GetDetailCastUseCase(this._repository);
  final RepositoryType _repository;

  @override
  Future<Result<PersonResponseObject, NetworkError>> call(
      DetailAPIInput input) =>
      _repository.getDetailCast(input);
}