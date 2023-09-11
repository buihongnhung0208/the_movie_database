
import 'package:mg_api_service/mg_api_service.dart';
import 'package:the_movie_database/api_service/core/authentication/images_person_api_input.dart';
import 'package:the_movie_database/domain/repository/repository_type.dart';
import 'package:the_movie_database/domain/usecases/use_case.dart';
import 'package:the_movie_database/model/list_images_response_object/list_images_response_object.dart';

class GetListImagesUseCase
    implements
        UseCase<ImagesPersonAPIInput, Result<ListImagesResponseObject, NetworkError>> {
  const GetListImagesUseCase(this._repository);

  final RepositoryType _repository;

  @override
  Future<Result<ListImagesResponseObject, NetworkError>> call(
      ImagesPersonAPIInput input) =>
      _repository.getImagesPerson(input);
}