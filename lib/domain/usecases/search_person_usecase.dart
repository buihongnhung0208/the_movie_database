
import 'package:mg_api_service/mg_api_service.dart';
import 'package:the_movie_database/api_service/core/authentication/search_person_api_input.dart';
import 'package:the_movie_database/domain/repository/repository_type.dart';
import 'package:the_movie_database/domain/usecases/use_case.dart';
import 'package:the_movie_database/model/search_response_object/search_response_object.dart';

class SearchPersonUseCase
    implements
        UseCase<SearchPersonAPIInput, Result<SearchResponseObject, NetworkError>> {
  const SearchPersonUseCase(this._repository);

  final RepositoryType _repository;

  @override
  Future<Result<SearchResponseObject, NetworkError>> call(
      SearchPersonAPIInput input) =>
      _repository.searchPerson(input);
}