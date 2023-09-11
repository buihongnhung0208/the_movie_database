import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_movie_database/api_service/core/authentication/list-movies/list_movies_params.dart';
import 'package:the_movie_database/api_service/core/authentication/list_movies_api_input.dart';
import 'package:the_movie_database/domain/usecases/get_list_movies_usecase.dart';
import 'package:the_movie_database/model/movie_response_object/movie_response_object.dart';
import 'package:the_movie_database/presentation/resources/resources.dart';
import 'package:the_movie_database/utils/utils.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._getListMoviesUseCase) : super(HomeState.initial());
  final GetListMoviesUseCase _getListMoviesUseCase;

  Future<void> getListPopular() async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );
    final getListInput = ListMoviesAPIInput(
      const ListMoviesParams(),
      MovieType.popular.url,
    );
    final listMovies = await _getListMoviesUseCase.call(getListInput);
    listMovies.when(
      success: (listObject) {
        emit(
          state.copyWith(
            isLoading: false,
            listPopular: listObject.results,
            error: '',
          ),
        );
      },
      failure: (networkError) {
        emit(
          state.copyWith(
            isLoading: false,
            error: networkError.localizedErrorMessage ?? CoreResources.strings.something_wrong,
          ),
        );
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
      const ListMoviesParams(),
      MovieType.topRated.url,
    );
    final listMovies = await _getListMoviesUseCase.call(getListInput);

    listMovies.when(
      success: (listObject) {
        emit(
          state.copyWith(
            isLoadingTopRated: false,
            listTopRated: listObject.results,
            error: '',
          ),
        );
      },
      failure: (networkError) {
        emit(
          state.copyWith(
            isLoadingTopRated: false,
            error: networkError.localizedErrorMessage ?? CoreResources.strings.something_wrong,
          ),
        );
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
      const ListMoviesParams(),
      MovieType.upcoming.url,
    );
    final listMovies = await _getListMoviesUseCase.call(getListInput);

    listMovies.when(
      success: (listObject) {
        emit(
          state.copyWith(
            isLoadingUpcoming: false,
            listUpcoming: listObject.results,
            error: '',
          ),
        );
      },
      failure: (networkError) {
        emit(
          state.copyWith(
            isLoadingUpcoming: false,
            error: networkError.localizedErrorMessage ?? CoreResources.strings.something_wrong,
          ),
        );
      },
    );
  }

  Future<void> getData() async {
    Future.wait([getListPopular(), getListTopRated(), getListUpcoming()]);
  }
}
