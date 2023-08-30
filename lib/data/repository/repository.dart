import 'package:mg_api_service/wrapper/network_error.dart';
import 'package:mg_api_service/wrapper/result.dart';
import 'package:the_movie_database/api_service/core/authentication/list_movies_api_input.dart';
import 'package:the_movie_database/api_service/core_api_service.dart';
import 'package:the_movie_database/domain/repository/repository_type.dart';
import 'package:the_movie_database/model/list_response_object/list_response_object.dart';

class Repository implements RepositoryType {
  const Repository(this.coreAPIService);

  final CoreAPIService coreAPIService;
  @override
  Future<Result<ListResponseObject, NetworkError>> getListMovies(ListMoviesAPIInput input) async{
    final result = await coreAPIService.request(
      input,
      ListResponseObject.fromJson,
    );
    return result.when(
      success: (jsonObject) {
        try {
          return Result.success(jsonObject ?? const ListResponseObject());
        } catch (e) {
          return Result.failure(NetworkError.type(error: e.toString()));
        }
      },
      failure: (networkError) => Result.failure(networkError),
    );
  }

}