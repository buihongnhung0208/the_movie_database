import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_movie_database/api_service/core/authentication/list-movies/list_movies_params.dart';
import 'package:the_movie_database/api_service/core/authentication/list_movies_api_input.dart';
import 'package:the_movie_database/domain/usecases/get_list_movies_usecase.dart';
import 'package:the_movie_database/model/movie_response_object/movie_response_object.dart';
import 'package:the_movie_database/utils/utils.dart';

part 'list_movie_state.dart';

class ListMovieCubit extends Cubit<ListMovieState> {
  ListMovieCubit(this._getListMoviesUseCase) : super(ListMovieState.initial());
  final GetListMoviesUseCase _getListMoviesUseCase;

  Future<void> getListMovies({int page = 1, String title = ""}) async {
    emit(
      state.copyWith(
        isLoading: true,
        isEnd: false,
        page: page,
      ),
    );
    String url = '';
    switch (title) {
      case 'Popular':
        {
          url = MovieType.popular.url;
        }
        break;
      case 'Top Rated':
        {
          url = MovieType.topRated.url;
        }
        break;
      case 'Upcoming':
        {
          url = MovieType.upcoming.url;
        }
        break;
      default:
        break;
    }
    final getListInput = ListMoviesAPIInput(
      ListMoviesParams(page: page),
      url,
    );
    final listMovies = await _getListMoviesUseCase.call(getListInput);

    listMovies.when(
      success: (listObject) {
        try {
          emit(
            state.copyWith(
              isLoading: false,
              listMovies: [...state.listMovies, ...listObject.results],
              page: listObject.page + 1,
            ),
          );
          print(state.listMovies);
        } catch (e) {
          emit(state.copyWith(isLoading: false));
        }
      },
      failure: (networkError) {
        emit(state.copyWith(isLoading: false));
      },
    );
  }

  void setLoadMore(String? title) {
    if (state.isLoading == false) getListMovies(page: state.page, title: title ?? "");
  }

  void refreshList(String? title) {
    if (state.isLoading == false) getListMovies(page: 1, title: title ?? "");
  }

  Future<void> getData(String? title) async {
    Future.wait([getListMovies(title: title ?? "")]);
  }
}
