import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_movie_database/api_service/core/authentication/detail-movie/detail_movie_params.dart';
import 'package:the_movie_database/api_service/core/authentication/detail_movie_api_input.dart';
import 'package:the_movie_database/domain/usecases/get_detail_movie_usecase.dart';
import 'package:the_movie_database/model/movie_response_object/movie_response_object.dart';

part 'detail_movie_state.dart';

class DetailMovieCubit extends Cubit<DetailMovieState> {
  DetailMovieCubit(this._getDetailMovieUseCase) : super(DetailMovieState.initial());
  final GetDetailMovieUseCase _getDetailMovieUseCase;

  Future<void> getDetailMovie({required String id}) async {
    emit(state.copyWith(isLoading: true));
    final getDetailMovieInput = DetailMovieAPIInput(
      const DetailMovieParams(),
      id,
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
  Future<void> getData(String id) async {
    Future.wait([getDetailMovie( id: id)]);
  }
}
