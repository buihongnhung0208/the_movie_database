import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_movie_database/api_service/core/authentication/list-movies/list_movies_params.dart';
import 'package:the_movie_database/api_service/core/authentication/list_movies_api_input.dart';
import 'package:the_movie_database/api_service/core_api_service.dart';
import 'package:the_movie_database/model/list_response_object/list_response_object.dart';
import 'package:the_movie_database/model/movie_response_object/movie_response_object.dart';
import 'package:the_movie_database/utils/utils.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.initial());

  Future<void> getListPopular() async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );
    final getListInput = ListMoviesAPIInput(
      const ListMoviesParams(language: 'en-US', page: 1),
      MovieType.popular.url,
    );
    final coreAPIService = CoreAPIService();
    final listMovies = await coreAPIService.request(
      getListInput,
      ListResponseObject.fromJson,
    );

    listMovies.when(
      success: (listObject) {
        try {
          emit(
            state.copyWith(
              isLoading: false,
              listPopular: listObject!.results,
            ),
          );
        } catch (e) {
          emit(state.copyWith(isLoading: false));
        }
      },
      failure: (networkError) {
        emit(state.copyWith(isLoading: false));
      },
    );
  }

  Future<void> getListTopRated() async {
    emit(
      state.copyWith(
        isLoadingTopRated: true,
      ),
    );
    final getListInput = ListMoviesAPIInput(
      const ListMoviesParams(language: 'en-US', page: 1),
      MovieType.topRated.url,
    );
    final coreAPIService = CoreAPIService();
    final listMovies = await coreAPIService.request(
      getListInput,
      ListResponseObject.fromJson,
    );

    listMovies.when(
      success: (listObject) {
        try {
          emit(
            state.copyWith(
              isLoadingTopRated: false,
              listTopRated: listObject!.results,
            ),
          );
        } catch (e) {
          emit(state.copyWith(isLoadingTopRated: false));
        }
      },
      failure: (networkError) {
        emit(state.copyWith(isLoadingTopRated: false));
      },
    );
  }

  Future<void> getListUpcoming() async {
    emit(
      state.copyWith(
        isLoadingUpcoming: true,
      ),
    );
    final getListInput = ListMoviesAPIInput(
      const ListMoviesParams(language: 'en-US', page: 1),
      MovieType.upcoming.url,
    );
    final coreAPIService = CoreAPIService();
    final listMovies = await coreAPIService.request(
      getListInput,
      ListResponseObject.fromJson,
    );

    listMovies.when(
      success: (listObject) {
        try {
          emit(
            state.copyWith(
              isLoadingUpcoming: false,
              listUpcoming: listObject!.results,
            ),
          );
        } catch (e) {
          emit(state.copyWith(isLoadingUpcoming: false));
        }
      },
      failure: (networkError) {
        emit(state.copyWith(isLoadingUpcoming: false));
      },
    );
  }


  Future<void> getData() async {
    Future.wait([
      getListPopular(),
      getListTopRated(),
      getListUpcoming()
    ]);
  }
}
