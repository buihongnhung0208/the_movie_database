import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_movie_database/api_service/core/authentication/list-movies/list_movies_params.dart';
import 'package:the_movie_database/api_service/core/authentication/list_movies_api_input.dart';
import 'package:the_movie_database/api_service/core_api_service.dart';
import 'package:the_movie_database/model/list_response_object/list_response_object.dart';

part 'list_movie_state.dart';

class ListMovieCubit extends Cubit<ListMovieState> {
  ListMovieCubit() : super(ListMovieState.initial());

  Future<void> getListPopular() async {
    emit(
      state.copyWith(
        isLoading: true,
        isEnd: false,
      ),
    );
    final getListInput = ListMoviesAPIInput(
      const ListMoviesParams(language: 'en-US', page: 1),
    );
    final coreAPIService = CoreAPIService();
    final listMovies = await coreAPIService.request(
      getListInput,
      ListResponseObject.fromJson,
    );

    listMovies.when(
      success: (listObject) {
        try {
          print("------listObject $listObject");
          // emit(
          //   state.copyWith(
          //     isLoading: false,
          //     listMovies: [...listObject],
          //     // isEndMust: listDocumentObject.length < LIMIT,
          //   ),
          // );
        } catch (e) {
          emit(state.copyWith(isLoading: false));
        }
      },
      failure: (networkError) {
        emit(state.copyWith(isLoading: false));
      },
    );
  }

  Future<void> getData() async {
    Future.wait([getListPopular()]);
  }
}
