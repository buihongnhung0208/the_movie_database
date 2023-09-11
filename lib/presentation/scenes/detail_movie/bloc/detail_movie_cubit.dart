import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_movie_database/api_service/core/authentication/detail-movie/detail_movie_params.dart';
import 'package:the_movie_database/api_service/core/authentication/detail_movie_api_input.dart';
import 'package:the_movie_database/api_service/core/authentication/list-movies/list_movies_params.dart';
import 'package:the_movie_database/api_service/core/authentication/list_movies_api_input.dart';
import 'package:the_movie_database/domain/usecases/get_detail_movie_usecase.dart';
import 'package:the_movie_database/domain/usecases/get_list_movies_usecase.dart';
import 'package:the_movie_database/model/movie_response_object/movie_response_object.dart';

part 'detail_movie_state.dart';

class DetailMovieCubit extends Cubit<DetailMovieState> {
  DetailMovieCubit(
    this._getDetailMovieUseCase,
    this._getListMoviesUseCase,
  ) : super(DetailMovieState.initial());
  final GetDetailMovieUseCase _getDetailMovieUseCase;
  final GetListMoviesUseCase _getListMoviesUseCase;

  Future<void> getDetailMovie({required String id}) async {
    emit(state.copyWith(isLoading: true));
    final getDetailMovieInput = DetailAPIInput(
      const DetailMovieParams(),
      'movie/$id',
    );
    final detailMovie = await _getDetailMovieUseCase.call(getDetailMovieInput);
    detailMovie.when(
      success: (detailMovieObject) {
        emit(
          state.copyWith(
            isLoading: false,
            detailMovie: detailMovieObject,
          ),
        );
      },
      failure: (networkError) {
        emit(state.copyWith(isLoading: false));
      },
    );
  }

  Future<void> getListRecommendations({required String id}) async {
    emit(
      state.copyWith(
        isLoadinglistRecommendations: true,
      ),
    );
    final getListInput = ListMoviesAPIInput(
      const ListMoviesParams(),
      '/movie/$id/recommendations',
    );
    final listMovies = await _getListMoviesUseCase.call(getListInput);
    listMovies.when(
      success: (listObject) {
        emit(
          state.copyWith(
            isLoadinglistRecommendations: false,
            listRecommendations: listObject.results,
          ),
        );
      },
      failure: (networkError) {
        emit(state.copyWith(isLoadinglistRecommendations: false));
      },
    );
  }

  Future<void> getData(String id) async {
    Future.wait([getDetailMovie(id: id), getListRecommendations(id: id)]);
  }
}
