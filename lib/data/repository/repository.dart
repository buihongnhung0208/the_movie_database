import 'package:mg_api_service/wrapper/network_error.dart';
import 'package:mg_api_service/wrapper/result.dart';
import 'package:the_movie_database/api_service/core/authentication/detail_movie_api_input.dart';
import 'package:the_movie_database/api_service/core/authentication/images_person_api_input.dart';
import 'package:the_movie_database/api_service/core/authentication/list_movies_api_input.dart';
import 'package:the_movie_database/api_service/core/authentication/search_person_api_input.dart';
import 'package:the_movie_database/api_service/core_api_service.dart';
import 'package:the_movie_database/domain/repository/repository_type.dart';
import 'package:the_movie_database/model/list_images_response_object/list_images_response_object.dart';
import 'package:the_movie_database/model/list_response_object/list_response_object.dart';
import 'package:the_movie_database/model/movie_response_object/movie_response_object.dart';
import 'package:the_movie_database/model/person_response_object/person_response_object.dart';
import 'package:the_movie_database/model/search_response_object/search_response_object.dart';

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

  @override
  Future<Result<MovieResponseObject, NetworkError>> getDetailMovie(DetailAPIInput input) async{
    final result = await coreAPIService.request(
      input,
      MovieResponseObject.fromJson,
    );
    return result.when(
      success: (jsonObject) {
        try {
          return Result.success(jsonObject ?? const MovieResponseObject());
        } catch (e) {
          return Result.failure(NetworkError.type(error: e.toString()));
        }
      },
      failure: (networkError) => Result.failure(networkError),
    );
  }

  @override
  Future<Result<SearchResponseObject, NetworkError>> searchPerson(SearchPersonAPIInput input) async{
    final result = await coreAPIService.request(
      input,
      SearchResponseObject.fromJson,
    );
    return result.when(
      success: (jsonObject) {
        try {
          return Result.success(jsonObject ?? const SearchResponseObject());
        } catch (e) {
          return Result.failure(NetworkError.type(error: e.toString()));
        }
      },
      failure: (networkError) => Result.failure(networkError),
    );
  }

  @override
  Future<Result<PersonResponseObject, NetworkError>> getDetailCast(DetailAPIInput input) async{
    final result = await coreAPIService.request(
      input,
      PersonResponseObject.fromJson,
    );
    return result.when(
      success: (jsonObject) {
        try {
          return Result.success(jsonObject ?? const PersonResponseObject());
        } catch (e) {
          return Result.failure(NetworkError.type(error: e.toString()));
        }
      },
      failure: (networkError) => Result.failure(networkError),
    );
  }

  @override
  Future<Result<ListImagesResponseObject, NetworkError>> getImagesPerson(ImagesPersonAPIInput input) async{
    final result = await coreAPIService.request(
      input,
      ListImagesResponseObject.fromJson,
    );
    return result.when(
      success: (jsonObject) {
        try {
          return Result.success(jsonObject ?? const ListImagesResponseObject());
        } catch (e) {
          return Result.failure(NetworkError.type(error: e.toString()));
        }
      },
      failure: (networkError) => Result.failure(networkError),
    );
  }

}