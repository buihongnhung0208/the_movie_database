import 'package:mg_api_service/mg_api_service.dart';
import 'package:the_movie_database/api_service/core/authentication/detail_movie_api_input.dart';
import 'package:the_movie_database/api_service/core/authentication/images_person_api_input.dart';
import 'package:the_movie_database/api_service/core/authentication/list_movies_api_input.dart';
import 'package:the_movie_database/api_service/core/authentication/search_person_api_input.dart';
import 'package:the_movie_database/model/image_response_object/image_response_object.dart';
import 'package:the_movie_database/model/list_images_response_object/list_images_response_object.dart';
import 'package:the_movie_database/model/list_response_object/list_response_object.dart';
import 'package:the_movie_database/model/movie_response_object/movie_response_object.dart';
import 'package:the_movie_database/model/person_response_object/person_response_object.dart';
import 'package:the_movie_database/model/search_response_object/search_response_object.dart';

abstract class RepositoryType {
  Future<Result<ListResponseObject, NetworkError>> getListMovies(ListMoviesAPIInput input);
  Future<Result<MovieResponseObject, NetworkError>> getDetailMovie(DetailAPIInput input);
  Future<Result<SearchResponseObject, NetworkError>> searchPerson(SearchPersonAPIInput input);
  Future<Result<PersonResponseObject, NetworkError>> getDetailCast(DetailAPIInput input);
  Future<Result<ListImagesResponseObject, NetworkError>> getImagesPerson(ImagesPersonAPIInput input);

}